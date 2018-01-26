<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Isi_kuisioner extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		//$this->load->model('Faktor_luftman');
	}
	public function index()
	{
		$data['faktor_luftman'] = $this->Faktor_luftman->select_all()->result();
		$data['faktor_indikator'] = $this->Faktor_luftman->join_indikator()->result();
		$data['indikator_likert'] = $this->Likert_luftman->join_indikator()->result();
		// echo "<pre>";
		// print_r($data['faktor_indikator']);
		// echo "</pre>";
		
		$data['id'] = $this->session->userdata('id');
		$data['user'] = $this->session->userdata('username');

		

		// foreach ($data3 as $key) {
		// 	echo $key->id."<br>";
		// 	// echo $key->username;
		// 	# code...
		// }

		//echo $data2['username'];
		// print_r($data2[0]);
		//var_dump($data['faktor_indikator']);
		 $this->load->view('user/kuisioner', $data);
		
		// $data2['indikator_luftman'] = $this->Indikator_luftman->select_by_id($id_agenda)->row(); 
		// $this->load->view('user/table_kuisioner', $data2);
		// $data2['daftar_agenda'] = $this->Indikator_luftman->select_all()->result(); 
		// $this->load->view('user/kuisioner', $data2);
	}


	public function process_measurement(){
	// echo $data4;
	$masterrisna = $this->input->post();
		foreach($masterrisna['a'] as $key=>$row){
			// echo "<pre>";
			// print_r($key);
			// echo "</pre>";
			$insert['id_user'] = $this->session->userdata('id')[0]->id;
			$insert['idin'] = $key;
			$insert['value'] = array_sum($row)/count($row);

			// print_r($insert['id_user']);
			$this->Measurement->insert_measurement($insert);
		}
		redirect('index.php/isi_kuisioner');
	}
}
/* End of file isi_kuisioner.php */
/* Location: ./application/controllers/isi_kuisioner.php */