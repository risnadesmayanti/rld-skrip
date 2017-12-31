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
		//var_dump($data)
		$this->load->view('user/kuisioner', $data);
		
		$data2['indikator_luftman'] = $this->Indikator_luftman->select_by_id($id_agenda)->row(); 
		$this->load->view('user/table_kuisioner', $data2);
		// $data2['daftar_agenda'] = $this->Indikator_luftman->select_all()->result(); 
		// $this->load->view('user/kuisioner', $data2);
	}

	public function tampil_indikator($id_agenda)
	{
		
		//var_dump($data)
	}

}

/* End of file isi_kuisioner.php */
/* Location: ./application/controllers/isi_kuisioner.php */