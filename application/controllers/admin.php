 <?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Admin extends CI_Controller {

	public function index(){

		$data = Array();
		$data['responden'] = $this->User->selectAll()->num_rows();
		$footer['graph1'] = $this->User->selectGroupByDate()->result_array();
		$footer['graph2'] = $this->User->selectGroupByJabatan()->result_array();
		$footer['graph2k'] = $this->User->selectGroupByTipe()->result_array();
		$y = $this->User->selectGroupByJabatan2()->result_array();
		foreach($footer['graph2'] as $key=>$i){
			foreach($y as $j){
				if($j['y'] == $i['y']){
					$footer['graph2'][$key][$j['k']] = $j['Jumlah'];
				}
			}
		}

		
		// var_dump(json_encode($footer['graph1']));

		$this->load->view('admin/templates/header',$data);
		$this->load->view('admin/dashboard',$data);
		$this->load->view('admin/templates/footer',$footer);
	}
	public function diagramPTN(){
		//-- PTN
		//Big one
		$dbtemp = $this->Measurement->diagramAll(1)->result_array();
		for($i = 1; $i <= 6; $i++){
			$temp = 0;
			$count = 0;
			foreach($dbtemp as $row){
				if($row['idf'] == $i){
					$temp+=$row['value'];
					$count++;
				}
			}
			// echo $temp."/".$count;
			// echo "<br/>";
			$footer['d1'][] = $temp/$count;
		}
		//------------------------------------------------------------------------
		//---- Avg spiderweb Big
		$avg = array_sum($footer['d1'])/6;
		for($i=0;$i<6;$i++){
			$footer['avg'][] = $avg;
		}
		//------------------------------------------------ 
		// 6 Diagram Faktor
		$abjad = ['A','B','C','D','E','F','G'];
		$indikator = $this->Indikator_luftman->select_all()->result_array();
		for ($i=1; $i <= 6 ; $i++) { 
		$abjc = 0;
			foreach($indikator as $row){
				if($row['idf'] == $i){
					// var_dump($row);
					// echo "<pre>".var_dump($row)."</pre>";
					$footer['d2'][$i]['cat'][] = $abjad[$abjc];
					$footer['d2'][$i]['id'][] = $row['id'];
					$abjc++;
					//var_dump($indikator);
				}
			}
			$ind = $this->Indikator_luftman->select_by_idf($i)->result_array();
			$vFaktor = $this->Measurement->diagramFaktor(1,$i)->result_array(); // 1 means PTN
			foreach($ind as $row){
				$count = 0;
				$temp = 0;
				foreach($vFaktor as $row2){
					if($row['id'] == $row2['idin']){
						$temp+=$row2['value'];
						$count++;
						//$abjc++;
					}
				}
				$footer['d2'][$i]['data'][] = $temp/$count;
				$footer['d2'][$i]['avg'][] = $avg;
			}
		}

		//---- Faktor Pendukung dan Penghambat
		$data = array();
	  $data['indikator'] = $indikator;
		for($i=1;$i<=6;$i++){
			$count = 0;
			foreach($footer['d2'][$i]['data'] as $key=>$row){
				if($row<$avg){
					//var_dump($data['indikator']);
					$data['penghambat'][$i][$count]['nama'] = $footer['d2'][$i]['cat'][$key]; 
					$data['penghambat'][$i][$count]['level'] = $this->Measurement->getLevel($footer['d1'],$footer['d2'][$i]['data'][$key]); 
					$qStrategi = $this->Strategi->selectStrategi($footer['d2'][$i]['id'][$key],$data['penghambat'][$i][$count]['level'])->row_array();
					$data['penghambat'][$i][$count]['kondisi'] = $qStrategi['kondisi'];
					$data['penghambat'][$i][$count]['goal'] = $data['penghambat'][$i][$count]['level']+1;
					$data['penghambat'][$i][$count]['strategi'] = $qStrategi['strategi'];
					// $data['penghambat'][$i][$count]['Goal'] = $data['penghambat'][$i][$count]['level']+1;
					$count++;
				}
			}
		}
		// echo "<pre>";
		// print_r($data['indikator']);
		// echo "</pre>";
		$this->load->view('admin/templates/header');
		$this->load->view('admin/ptn',$data);
		$this->load->view('admin/templates/footer',$footer);
	}
	public function diagramPTS(){
		//-- PTS
		$dbtemp = $this->Measurement->diagramAll(2)->result_array();
		for($i = 1; $i <= 6; $i++){
			$temp = 0;
			$count = 0;
			foreach($dbtemp as $row){
				if($row['idf'] == $i){
					$temp+=$row['value'];
					$count++;
				}
			}
			// echo $temp."/".$count;
			// echo "<br/>";
			$footer['d3'][] = $temp/$count;
		}
		//------------------------------------------------------------------------
		//---- Avg spiderweb Big
		$avg = array_sum($footer['d3'])/6;
		for($i=0;$i<6;$i++){
			$footer['avg'][] = $avg;
		}
		//------------------------------------------------
		$abjad = ['A','B','C','D','E','F','G'];
		$faktor = $this->Indikator_luftman->select_all()->result_array();
		for ($i=1; $i <= 6 ; $i++) { 
			$abjdkey=0;
			foreach($faktor as $row){
				if($row['idf'] == $i){
					$footer['d4'][$i]['cat'][] = $abjad[$abjdkey];
					$footer['d4'][$i]['id'][] = $row['id'];
					$abjdkey++;
				}
			}
			$ind = $this->Indikator_luftman->select_by_idf($i)->result_array();
			$vFaktor = $this->Measurement->diagramFaktor(2,$i)->result_array();
			foreach($ind as $row){
				$count = 0;
				$temp = 0;
				foreach($vFaktor as $row2){
					if($row['id'] == $row2['idin']){
						$temp+=$row2['value'];
						$count++;
					}
				}
				$footer['d4'][$i]['data'][] = $temp/$count;
				$footer['d4'][$i]['avg'][] = $avg;
			}
		}
		//---- Faktor Pendukung dan Penghambat
		$avg = array_sum($footer['d3'])/6;
		echo $avg;
		for($i=1;$i<=6;$i++){
			$count = 0;
			foreach($footer['d4'][$i]['data'] as $key=>$row){
				if($row<$avg){
					$data['penghambat'][$i][$count]['nama'] = $footer['d4'][$i]['cat'][$key]; 
					$data['penghambat'][$i][$count]['level'] = $this->Measurement->getLevel($footer['d3'],$footer['d4'][$i]['data'][$key]); 
						$qStrategi = $this->Strategi->selectStrategi($footer['d4'][$i]['id'][$key],$data['penghambat'][$i][$count]['level'])->row_array();
					$data['penghambat'][$i][$count]['kondisi'] = $qStrategi['kondisi'];
					$data['penghambat'][$i][$count]['goal'] = $data['penghambat'][$i][$count]['level']+1;
					$data['penghambat'][$i][$count]['strategi'] = $qStrategi['strategi'];
					$count++;
				}
			}
		}
		$data['indikator'] = $faktor;
		$this->load->view('admin/templates/header');
		$this->load->view('admin/pts',$data);
		$this->load->view('admin/templates/footer',$footer);
	}	

	public function diagramLPTN(){
		$data = array();
		$dbtemp = $this->Measurement->diagramAll(1)->result_array();
		for($i = 1; $i <= 6; $i++){
			$temp = 0;
			$count = 0;
			foreach($dbtemp as $row){
				if($row['idf'] == $i){
					$temp+=$row['value'];
					$count++;
				}
			}
			$avgAll[] = $temp/$count;
		}
		for($i = 1; $i <= 6; $i++){
			$footer['b1'][] = $this->Measurement->getLevel($avgAll,$avgAll[$i-1]);
		}
		//------------------------------------------------ 
		// 6 Diagram Faktor
		$indikator = $this->Indikator_luftman->select_all()->result_array();
		for ($i=1; $i <= 6 ; $i++) { 
			foreach($indikator as $row){
				if($row['idf'] == $i){
					$footer['b2'][$i]['cat'][] = $row['indicator'];
				}
			}
			$ind = $this->Indikator_luftman->select_by_idf($i)->result_array();
			$vFaktor = $this->Measurement->diagramFaktor(1,$i)->result_array(); // 1 means PTN
			foreach($ind as $row){
				$count = 0;
				$temp = 0;
				foreach($vFaktor as $row2){
					if($row['id'] == $row2['idin']){
						$temp+=$row2['value'];
						$count++;
					}
				}
				$footer['b2'][$i]['data'][] = $this->Measurement->getLevel($avgAll,$temp/$count);
			}
			// var_dump($footer['b2']);
		}
		$this->load->view('admin/templates/header');
		$this->load->view('admin/ptnb',$data);
		$this->load->view('admin/templates/footer',$footer);
	}
	public function diagramLPTS(){
		$data = array();
		$dbtemp = $this->Measurement->diagramAll(2)->result_array();
		for($i = 1; $i <= 6; $i++){
			$temp = 0;
			$count = 0;
			foreach($dbtemp as $row){
				if($row['idf'] == $i){
					$temp+=$row['value'];
					$count++;
				}
			}
			$avgAll[] = $temp/$count;
		}
		for($i = 1; $i <= 6; $i++){
			$footer['b3'][] = $this->Measurement->getLevel($avgAll,$avgAll[$i-1]);
		}
		//------------------------------------------------ 
		// 6 Diagram Faktor
		$indikator = $this->Indikator_luftman->select_all()->result_array();
		for ($i=1; $i <= 6 ; $i++) { 
			foreach($indikator as $row){
				if($row['idf'] == $i){
					$footer['b4'][$i]['cat'][] = $row['indicator'];
				}
			}
			$ind = $this->Indikator_luftman->select_by_idf($i)->result_array();
			$vFaktor = $this->Measurement->diagramFaktor(2,$i)->result_array(); // 1 means PTN
			foreach($ind as $row){
				$count = 0;
				$temp = 0;
				foreach($vFaktor as $row2){
					if($row['id'] == $row2['idin']){
						$temp+=$row2['value'];
						$count++;
					}
				}
				$footer['b4'][$i]['data'][] = $this->Measurement->getLevel($avgAll,$temp/$count);
			}
			// var_dump($footer['b2']);
		}
		$this->load->view('admin/templates/header');
		$this->load->view('admin/ptsb',$data);
		$this->load->view('admin/templates/footer',$footer);	
	}

	public function indikatorAll(){
		$x = $this->Indikator_luftman->select_all_join_faktor()->result_array();
		echo "<pre>";
		print_r($x);
		echo "</pre>";
	}
}
