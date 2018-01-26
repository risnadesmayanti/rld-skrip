<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Admin extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		//$this->load->model('Faktor_luftman');
	}
	
	public function index()
	{

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
}
/* End of file isi_kuisioner.php */
/* Location: ./application/controllers/isi_kuisioner.php */