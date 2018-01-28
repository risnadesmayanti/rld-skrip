<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Admin extends CI_Controller {
	
	public function index(){

		$data = Array();
		$footer['graph1'] = $this->User->selectGroupByDate()->result_array();
		$footer['graph2'] = $this->User->selectGroupByJabatan()->result_array();
		$footer['graph2k'] = $this->User->selectGroupByKategori()->result_array();
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
		//------------------------------------------------ 
		// 6 Diagram Faktor
		$indikator = $this->Indikator_luftman->select_all()->result_array();
		for ($i=1; $i <= 6 ; $i++) { 
			foreach($indikator as $row){
				if($row['idf'] == $i){
					$footer['d2'][$i]['cat'][] = $row['indicator'];
				}
			}
			$ind = $this->Indikator_luftman->select_by_idf($i)->result_array();
			$vFaktor = $this->Measurement->diagramFaktor(1,$i)->result_array();
			foreach($ind as $row){
				$count = 0;
				$temp = 0;
				foreach($vFaktor as $row2){
					if($row['id'] == $row2['idin']){
						$temp+=$row2['value'];
						$count++;
					}
				}
				$footer['d2'][$i]['data'][] = $temp/$count;
			}
		}
		//---- Faktor Pendukung dan Penghambat
		$avg = array_sum($footer['d1'])/6;
		for($i=1;$i<=6;$i++){
			$count = 0;
			foreach($footer['d2'][$i]['data'] as $key=>$row){
				if($row<$avg){
					$data['penghambat'][$i][$count]['nama'] = $footer['d2'][$i]['cat'][$key]; 
					$data['penghambat'][$i][$count]['level'] = (int)$footer['d2'][$i]['data'][$key]; 
					$count++;
				}
			}
		}
		// echo "<pre>";
		// echo print_r($avg);
		// echo var_dump($data['penghambat']);
		// echo "<pre/>";
		// if(count($data['pendukung']) > count($data['penghambat'])) $long = count($data['pendukung']); else $long = count($data['penghambat']);
		// $data['long'] = $long;

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
		//------------------------------------------------
		$faktor = $this->Indikator_luftman->select_all()->result_array();
		for ($i=1; $i <= 6 ; $i++) { 
			foreach($faktor as $row){
				if($row['idf'] == $i){
					$footer['d4'][$i]['cat'][] = $row['indicator'];
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
					$data['penghambat'][$i][$count]['level'] = (int)$footer['d4'][$i]['data'][$key]; 
					$count++;
				}
			}
		}
		$this->load->view('admin/templates/header');
		$this->load->view('admin/pts',$data);
		$this->load->view('admin/templates/footer',$footer);
	}	

	public function indikatorAll(){
		$x = $this->Indikator_luftman->select_all_join_faktor()->result_array();
		echo "<pre>";
		print_r($x);
		echo "</pre>";
	}
}
