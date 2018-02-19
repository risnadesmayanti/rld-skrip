<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Enterprise extends CI_Controller {

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
		'23246b19510e2c18dac564ceb1e96a24' => 'Universitas Indonesia',
		'3deb58bd74dc00ad20902cd19cafeaf3' => 'Universitas Pendidikan Indonesia',
		'bd819902b36ff44419fa96b85112e0c9' => 'Sekolah Tinggi Bahasa Asing Yapari',
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
		foreach($indikator as $row){
			// var_dump($row);
			$footer['d2']['cat'][] = $row['indicator'];
			$footer['d2']['id'][] = $row['id'];
			
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
		

		//---- Faktor Pendukung dan Penghambat
		$count = 0;
		foreach($footer['d2']['data'] as $key=>$row){
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
		// echo "<pre>";
		// echo print_r($footer);
		// echo "<pre/>";

		$this->load->view('enterprise/templates/header');
		$this->load->view('enterprise/komunikasi',$data);
		$this->load->view('enterprise/templates/footer',$footer);
	}

	public function nilai()
	{
		$this->load->view('enterprise/templates/header');
		$this->load->view('enterprise/nilai');
		$this->load->view('enterprise/templates/footer');
	}


	public function tkelola()
	{
		$this->load->view('enterprise/templates/header');
		$this->load->view('enterprise/tkelola');
		$this->load->view('enterprise/templates/footer');
	}


	public function mitra()
	{
		$this->load->view('enterprise/templates/header');
		$this->load->view('enterprise/mitra');
		$this->load->view('enterprise/templates/footer');
	}


	public function arsitektur()
	{
		$this->load->view('enterprise/templates/header');
		$this->load->view('enterprise/arsitektur');
		$this->load->view('enterprise/templates/footer');
	}


	public function kemampuan()
	{
		$this->load->view('enterprise/templates/header');
		$this->load->view('enterprise/kemampuan');
		$this->load->view('enterprise/templates/footer');
	}
}

/* End of file  adminAdh.php */
/* Location: ./application/controllers/ adminAdh.php */