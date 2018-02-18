<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Isi_kuisioner extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		//$this->load->model('Faktor_luftman');
	}
	public function index(){
		if($this->session->userdata('id')){
			// var_dump($this->session->userdata());
			$data['faktor_luftman'] = $this->Faktor_luftman->select_all()->result();
			$data['faktor_indikator'] = $this->Faktor_luftman->join_indikator()->result();
			$data['indikator_likert'] = $this->Likert_luftman->join_indikator()->result();
			
			$data['user'] = $this->session->userdata('username');
			 $this->load->view('user/kuisioner2', $data);
		}else{
			redirect('/');
		}
	}


	public function process_measurement(){
	//1 7 14 21 27 33
	$masterrisna = $this->input->post();
	// var_dump($masterrisna);
	// $temp = NULL;
		foreach($masterrisna['a'] as $key=>$row){
			$insert['id_user'] = $this->session->userdata('id');
			$insert['idin'] = $key;
			$insert['value'] = array_sum($row)/count($row);

			$this->Measurement->insert_measurement($insert);
		}
		$array = array(
			$masterrisna['href'] => TRUE,
			'counter' => $this->session->userdata('counter')+1
		);
		$this->session->set_userdata($array);
		// var_dump($this->session->userdata());
		redirect('index.php/isi_kuisioner');
	}
}
/* End of file isi_kuisioner.php */
/* Location: ./application/controllers/isi_kuisioner.php */