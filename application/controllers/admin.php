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
		echo "<pre>";
		print_r($footer['graph2k']);
		echo "</pre>";
		
		// var_dump(json_encode($footer['graph1']));

		$this->load->view('admin/templates/header',$data);
		$this->load->view('admin/dashboard',$data);
		$this->load->view('admin/templates/footer',$footer);
	}
	public function diagramPT(){
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
			echo $temp."/".$count;
			echo "<br/>";
			$footer['d1'][] = $temp/$count;
		}
		//------------------------------------------------
		$faktor = $this->Indikator_luftman->select_all()->result_array();
		for ($i=1; $i <= 6 ; $i++) { 
			foreach($faktor as $row){
				if($row['idf'] == $i){
					$footer['d2'][$i]['cat'][] = $row['indicator'];
				}
			}
			foreach($dbtemp as $row){
				if($row['idf'] == $i){
					// $f1 = $this->Indikator_luftman->select_by_idf($i)->result_array();
					// $temp['idin'] = $row['idin'];
					$footer['d2'][$i]['data'][] = $row['value'];
				}
			}
		}
		echo "<pre>";
		print_r($footer['d2']);
		echo "</pre>";

		// $this->load->view('admin/templates/header');
		// $this->load->view('admin/pt');
		// $this->load->view('admin/templates/footer',$footer);
	}	
}
