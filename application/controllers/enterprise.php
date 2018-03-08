<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Enterprise extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->data1 = array();
		$this->data2 = array();
		$this->data3 = array();
		$this->data4 = array();
		$this->data5 = array();
		$this->data6 = array();

		$this->dataAll = array();
	}

	public function index(){
		$data['responden'] = $this->User->selectAllEnterprise($this->session->userdata('univ'))->num_rows();
		$footer['graph1'] = $this->User->selectGroupByDateEnterprise($this->session->userdata('univ'))->result_array();
		$footer['graph2'] = $this->User->selectGroupByJabatanEnterprise($this->session->userdata('univ'))->result_array();
		$footer['graph2k'] = $this->User->selectGroupByTipeEnterprise($this->session->userdata('univ'))->result_array();
		$y = $this->User->selectGroupByJabatan2($this->session->userdata('univ'))->result_array();
		foreach($footer['graph2'] as $key=>$i){
			foreach($y as $j){
				if($j['y'] == $i['y']){
					$footer['graph2'][$key][$j['k']] = $j['Jumlah'];
				}
			}
		}		
		$this->load->view('enterprise/templates/header',$data);
		$this->load->view('enterprise/dashboard',$data);
		$this->load->view('enterprise/templates/footer',$footer);
	}
	public function view($md5){
		// $data = Array();
		$univ = [
		'19f7fd803ef4119e9bfe8047636426b4' => 'Institut Teknologi Sepuluh November',
		'55773cde2c9c0b37ddf0cb1731849c83' => 'Universitas Hasanudin',
		'17bbaf960b97bbe17fc58fd191e2017a' => 'Universitas Diponegoro',
		'5d30d6a18d19362d5454dec0ff9df35f' => 'Universitas Padjadjaran',
		'7942fc32ff14496dbe2584ae864cb866' => 'Universitas Airlangga',
		'b9e908671bed8a87ebf663a263253104' => 'Universitas Sumatera Utara',
		'3deb58bd74dc00ad20902cd19cafeaf3' => 'Universitas Pendidikan Indonesia',
		'23246b19510e2c18dac564ceb1e96a24' => 'Universitas Indonesia',
		'6da9ab7d796b399c804dfe95d8d2f185' => 'Universitas Gadjah Mada',
		'2de2e2bea85b125e3ba97ed8fb0c3878' => 'Institut Pertanian Bogor',
		'2d01536c50326f8b100470bc1eaac753' => 'Institut Teknologi Bandung',
		'b60909a85fe4df9d1bb4357bcc150003' => 'Universitas Komputer Indonesia'
		];
		$this->session->set_userdata(['univ'=>$univ[$md5]]);
		// var_dump($this->session->userdata());
		$data['responden'] = $this->User->selectAllEnterprise($univ[$md5])->num_rows();
		$footer['graph1'] = $this->User->selectGroupByDateEnterprise($univ[$md5])->result_array();
		$footer['graph2'] = $this->User->selectGroupByJabatanEnterprise($univ[$md5])->result_array();
		$footer['graph2k'] = $this->User->selectGroupByTipeEnterprise($univ[$md5])->result_array();
		$y = $this->User->selectGroupByJabatan2($univ[$md5])->result_array();
		foreach($footer['graph2'] as $key=>$i){
			foreach($y as $j){
				if($j['y'] == $i['y']){
					$footer['graph2'][$key][$j['k']] = $j['Jumlah'];
				}
			}
		}		
		$this->load->view('enterprise/templates/header',$data);
		$this->load->view('enterprise/dashboard',$data);
		$this->load->view('enterprise/templates/footer',$footer);
	}

	public function allIndicator()
	{
		//Big one
		$dbtemp = $this->Measurement->diagramAllEnterprise($this->session->userdata('univ'))->result_array();
		// var_dump($dbtemp);
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
			$vFaktor = $this->Measurement->diagramFaktorEnterprise($this->session->userdata('univ'),$i)->result_array(); // 1 means PTN
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

		// var_dump()$this->dataAll;

		$this->load->view('enterprise/templates/header');
		$this->load->view('enterprise/allindicator', $data);
		$this->load->view('enterprise/templates/footer-all', $footer);
		// $this->load->view('enterprise/templates/footer');
	}

	public function komunikasi(){
		//Big one
		$dbtemp = $this->Measurement->diagramAllEnterprise($this->session->userdata('univ'))->result_array();
		// var_dump($dbtemp);
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
		//---- Avg spiderweb Big
		$avg = array_sum($footer['d1'])/6;
		for($i=0;$i<6;$i++){
			$footer['avg'][] = $avg;
		}

		//---
		//small web
		$indikator = $this->Indikator_luftman->select_by_idf(1)->result_array();
		// var_dump($indikator);
		$abjad = ['A','B','C','D','E','F'];
		$abjc = 0;
		foreach($indikator as $row){
			// var_dump($row);
			$footer['d2']['cat'][] = $abjad[$abjc];
			$footer['d2']['id'][] = $row['id'];
			$abjc++;
		}
		$ind = $this->Indikator_luftman->select_by_idf(1)->result_array();
		$vFaktor = $this->Measurement->diagramFaktorEnterprise($this->session->userdata('univ'),1)->result_array(); // 1 means PTN
		foreach($ind as $row){
			$count = 0;
			$temp = 0;
			foreach($vFaktor as $row2){
				if($row['id'] == $row2['idin']){
					$temp+=$row2['value'];
					$count++;
				}
			}
			$footer['d2']['data'][] = $temp/$count;
			$footer['d2']['avg'][] = $avg;
		}
		
		$data = array();
	  $data['indikator'] = $indikator;
		//---- Faktor Pendukung dan Penghambat
		$count = 0;
		foreach($footer['d2']['data'] as $key=>$row){
			// var_dump($avg);
			if($row<$avg){
				$data['penghambat'][$count]['nama'] = $footer['d2']['cat'][$key]; 
				$data['penghambat'][$count]['level'] = $this->Measurement->getLevel($footer['d1'],$footer['d2']['data'][$key]); 
				$qStrategi = $this->Strategi->selectStrategi($footer['d2']['id'][$key],$data['penghambat'][$count]['level'])->row_array();
				$data['penghambat'][$count]['kondisi'] = $qStrategi['kondisi'];
				$data['penghambat'][$count]['goal'] = $data['penghambat'][$count]['level']+1;
				$data['penghambat'][$count]['strategi'] = $qStrategi['strategi'];
				$count++;
			}
		}

		// $this->data1 = array();
		$this->dataAll = $data;

		$this->load->view('enterprise/templates/header');
		$this->load->view('enterprise/komunikasi',$data);
		$this->load->view('enterprise/templates/footer',$footer);
	}

	public function nilai()
	{
		//Big one
		$dbtemp = $this->Measurement->diagramAllEnterprise($this->session->userdata('univ'))->result_array();
		// var_dump($dbtemp);
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
		//---- Avg spiderweb Big
		$avg = array_sum($footer['d1'])/6;
		for($i=0;$i<6;$i++){
			$footer['avg'][] = $avg;
		}

		//---
		//small web
		$indikator = $this->Indikator_luftman->select_by_idf(2)->result_array();
		// var_dump($indikator);
		$abjad = ['A','B','C','D','E','F','G'];
		$abjc = 0;
		foreach($indikator as $row){
			// var_dump($row);
			$footer['d2']['cat'][] = $abjad[$abjc];
			$footer['d2']['id'][] = $row['id'];
			$abjc++;
			
		}
		$ind = $this->Indikator_luftman->select_by_idf(2)->result_array();
		$vFaktor = $this->Measurement->diagramFaktorEnterprise($this->session->userdata('univ'),2)->result_array(); // 1 means PTN
		foreach($ind as $row){
			$count = 0;
			$temp = 0;
			foreach($vFaktor as $row2){
				if($row['id'] == $row2['idin']){
					$temp+=$row2['value'];
					$count++;
				}
			}
			$footer['d2']['data'][] = $temp/$count;
			$footer['d2']['avg'][] = $avg;
		}
		
		$data = array();
		 $data['indikator'] = $indikator;
		//---- Faktor Pendukung dan Penghambat
		$count = 0;
		foreach($footer['d2']['data'] as $key=>$row){
			// var_dump($avg);
			if($row<$avg){
				$data['penghambat'][$count]['nama'] = $footer['d2']['cat'][$key]; 
				$data['penghambat'][$count]['level'] = $this->Measurement->getLevel($footer['d1'],$footer['d2']['data'][$key]); 
				$qStrategi = $this->Strategi->selectStrategi($footer['d2']['id'][$key],$data['penghambat'][$count]['level'])->row_array();
				// var_dump($qStrategi);

				$data['penghambat'][$count]['kondisi'] = $qStrategi['kondisi'];
				$data['penghambat'][$count]['goal'] = $data['penghambat'][$count]['level']+1;
				$data['penghambat'][$count]['strategi'] = $qStrategi['strategi'];
				$count++;
			}
		}

		// $data2 = array();
		$data2 = $data;
		$this->dataAll = $data;

		$this->load->view('enterprise/templates/header');
		$this->load->view('enterprise/nilai',$data2);
		$this->load->view('enterprise/templates/footer',$footer);
	}


	public function tkelola()
	{
		//Big one
		$dbtemp = $this->Measurement->diagramAllEnterprise($this->session->userdata('univ'))->result_array();
		// var_dump($dbtemp);
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
		//---- Avg spiderweb Big
		$avg = array_sum($footer['d1'])/6;
		for($i=0;$i<6;$i++){
			$footer['avg'][] = $avg;
		}

		//---
		//small web
		$indikator = $this->Indikator_luftman->select_by_idf(3)->result_array();
		// var_dump($indikator);
		$abjad = ['A','B','C','D','E','F','G'];
		$abjc = 0;
		foreach($indikator as $row){
			// var_dump($row);
			$footer['d2']['cat'][] = $abjad[$abjc];
			$footer['d2']['id'][] = $row['id'];
			$abjc++;
		}
		$ind = $this->Indikator_luftman->select_by_idf(3)->result_array();
		$vFaktor = $this->Measurement->diagramFaktorEnterprise($this->session->userdata('univ'),3)->result_array(); // 1 means PTN
		foreach($ind as $row){
			$count = 0;
			$temp = 0;
			foreach($vFaktor as $row2){
				if($row['id'] == $row2['idin']){
					$temp+=$row2['value'];
					$count++;
				}
			}
			$footer['d2']['data'][] = $temp/$count;
			$footer['d2']['avg'][] = $avg;
		}
		
		$data = array();
		$data['indikator'] = $indikator;
		//---- Faktor Pendukung dan Penghambat
		$count = 0;
		foreach($footer['d2']['data'] as $key=>$row){
			// var_dump($avg);
			if($row<$avg){
				$data['penghambat'][$count]['nama'] = $footer['d2']['cat'][$key]; 
				$data['penghambat'][$count]['level'] = $this->Measurement->getLevel($footer['d1'],$footer['d2']['data'][$key]); 
				$qStrategi = $this->Strategi->selectStrategi($footer['d2']['id'][$key],$data['penghambat'][$count]['level'])->row_array();
				$data['penghambat'][$count]['kondisi'] = $qStrategi['kondisi'];
				$data['penghambat'][$count]['goal'] = $data['penghambat'][$count]['level']+1;
				$data['penghambat'][$count]['strategi'] = $qStrategi['strategi'];
				$count++;
			}
		}

		// $data3 = array();
		$data3 = $data;
		$this->dataAll = $data;

		$this->load->view('enterprise/templates/header');
		$this->load->view('enterprise/tkelola',$data3);
		$this->load->view('enterprise/templates/footer',$footer);
	}


	public function mitra()
	{
		//Big one
		$dbtemp = $this->Measurement->diagramAllEnterprise($this->session->userdata('univ'))->result_array();
		// var_dump($dbtemp);
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
		//---- Avg spiderweb Big
		$avg = array_sum($footer['d1'])/6;
		for($i=0;$i<6;$i++){
			$footer['avg'][] = $avg;
		}

		//---
		//small web
		$indikator = $this->Indikator_luftman->select_by_idf(4)->result_array();
		// var_dump($indikator);
		$abjad = ['A','B','C','D','E','F','G'];
		$abjc = 0;
		foreach($indikator as $row){
			// var_dump($row);
			$footer['d2']['cat'][] = $abjad[$abjc];
			$footer['d2']['id'][] = $row['id'];
			$abjc++;
		}
		$ind = $this->Indikator_luftman->select_by_idf(4)->result_array();
		$vFaktor = $this->Measurement->diagramFaktorEnterprise($this->session->userdata('univ'),4)->result_array(); // 1 means PTN
		foreach($ind as $row){
			$count = 0;
			$temp = 0;
			foreach($vFaktor as $row2){
				if($row['id'] == $row2['idin']){
					$temp+=$row2['value'];
					$count++;
				}
			}
			$footer['d2']['data'][] = $temp/$count;
			$footer['d2']['avg'][] = $avg;
		}
		
		$data = array();
		$data['indikator'] = $indikator;
		//---- Faktor Pendukung dan Penghambat
		$count = 0;
		foreach($footer['d2']['data'] as $key=>$row){
			// var_dump($avg);
			if($row<$avg){
				$data['penghambat'][$count]['nama'] = $footer['d2']['cat'][$key]; 
				$data['penghambat'][$count]['level'] = $this->Measurement->getLevel($footer['d1'],$footer['d2']['data'][$key]); 
				$qStrategi = $this->Strategi->selectStrategi($footer['d2']['id'][$key],$data['penghambat'][$count]['level'])->row_array();
				$data['penghambat'][$count]['kondisi'] = $qStrategi['kondisi'];
				$data['penghambat'][$count]['goal'] = $data['penghambat'][$count]['level']+1;
				$data['penghambat'][$count]['strategi'] = $qStrategi['strategi'];
				$count++;
			}
		}

		// $data4 = array();
		$data4 = $data;
		$this->dataAll = $data;

		$this->load->view('enterprise/templates/header');
		$this->load->view('enterprise/mitra',$data4);
		$this->load->view('enterprise/templates/footer',$footer);
	}


	public function arsitektur(){
		//Big one
		$dbtemp = $this->Measurement->diagramAllEnterprise($this->session->userdata('univ'))->result_array();
		// var_dump($dbtemp);
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
		//---- Avg spiderweb Big
		$avg = array_sum($footer['d1'])/6;
		for($i=0;$i<6;$i++){
			$footer['avg'][] = $avg;
		}

		//---
		//small web
		$indikator = $this->Indikator_luftman->select_by_idf(5)->result_array();
		// var_dump($indikator);
		$abjad = ['A','B','C','D','E','F','G'];
		$abjc = 0;
		foreach($indikator as $row){
			// var_dump($row);
			$footer['d2']['cat'][] = $abjad[$abjc];
			$footer['d2']['id'][] = $row['id'];
			$abjc++;
		}
		$ind = $this->Indikator_luftman->select_by_idf(5)->result_array();
		$vFaktor = $this->Measurement->diagramFaktorEnterprise($this->session->userdata('univ'),5)->result_array(); // 1 means PTN
		foreach($ind as $row){
			$count = 0;
			$temp = 0;
			foreach($vFaktor as $row2){
				if($row['id'] == $row2['idin']){
					$temp+=$row2['value'];
					$count++;
				}
			}
			$footer['d2']['data'][] = $temp/$count;
			$footer['d2']['avg'][] = $avg;
		}
		
		$data = array();
		$data['indikator'] = $indikator;
		//---- Faktor Pendukung dan Penghambat
		$count = 0;
		foreach($footer['d2']['data'] as $key=>$row){
			// var_dump($avg);
			if($row<$avg){
				$data['penghambat'][$count]['nama'] = $footer['d2']['cat'][$key]; 
				$data['penghambat'][$count]['level'] = $this->Measurement->getLevel($footer['d1'],$footer['d2']['data'][$key]); 
				$qStrategi = $this->Strategi->selectStrategi($footer['d2']['id'][$key],$data['penghambat'][$count]['level'])->row_array();
				$data['penghambat'][$count]['kondisi'] = $qStrategi['kondisi'];
				$data['penghambat'][$count]['goal'] = $data['penghambat'][$count]['level']+1;
				$data['penghambat'][$count]['strategi'] = $qStrategi['strategi'];
				$count++;
			}
		}

		// $data5 = array();
		$data5 = $data;
		$this->dataAll = $data;

		$this->load->view('enterprise/templates/header');
		$this->load->view('enterprise/arsitektur',$data5);
		$this->load->view('enterprise/templates/footer',$footer);
	}


	public function kemampuan()
	{
		//Big one
		$dbtemp = $this->Measurement->diagramAllEnterprise($this->session->userdata('univ'))->result_array();
		// var_dump($dbtemp);
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
		//---- Avg spiderweb Big
		$avg = array_sum($footer['d1'])/6;
		for($i=0;$i<6;$i++){
			$footer['avg'][] = $avg;
		}

		//---
		//small web
		$indikator = $this->Indikator_luftman->select_by_idf(6)->result_array();
		// var_dump($indikator);
		$abjad = ['A','B','C','D','E','F','G'];
		$abjc = 0;
		foreach($indikator as $row){
			// var_dump($row);
			$footer['d2']['cat'][] = $abjad[$abjc];
			$footer['d2']['id'][] = $row['id'];
			$abjc++;
		}
		$ind = $this->Indikator_luftman->select_by_idf(6)->result_array();
		$vFaktor = $this->Measurement->diagramFaktorEnterprise($this->session->userdata('univ'),6)->result_array(); // 1 means PTN
		foreach($ind as $row){
			$count = 0;
			$temp = 0;
			foreach($vFaktor as $row2){
				if($row['id'] == $row2['idin']){
					$temp+=$row2['value'];
					$count++;
				}
			}
			$footer['d2']['data'][] = $temp/$count;
			$footer['d2']['avg'][] = $avg;
		}
		
		$data = array();
		$data['indikator'] = $indikator;
		//---- Faktor Pendukung dan Penghambat
		$count = 0;
		foreach($footer['d2']['data'] as $key=>$row){
			// var_dump($avg);
			if($row<$avg){
				$data['penghambat'][$count]['nama'] = $footer['d2']['cat'][$key]; 
				$data['penghambat'][$count]['level'] = $this->Measurement->getLevel($footer['d1'],$footer['d2']['data'][$key]); 
				$qStrategi = $this->Strategi->selectStrategi($footer['d2']['id'][$key],$data['penghambat'][$count]['level'])->row_array();
				$data['penghambat'][$count]['kondisi'] = $qStrategi['kondisi'];
				$data['penghambat'][$count]['goal'] = $data['penghambat'][$count]['level']+1;
				$data['penghambat'][$count]['strategi'] = $qStrategi['strategi'];
				$count++;
			}
		}

		// $data6 = array();
		$data6 = $data;
		$this->dataAll = $data;

		$this->load->view('enterprise/templates/header');
		$this->load->view('enterprise/kemampuan',$data6);
		$this->load->view('enterprise/templates/footer',$footer);
	}


}

/* End of file  adminAdh.php */
/* Location: ./application/controllers/ adminAdh.php */