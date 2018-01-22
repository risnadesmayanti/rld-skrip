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
		$this->load->view('admin/dashboard');
	}
}
/* End of file isi_kuisioner.php */
/* Location: ./application/controllers/isi_kuisioner.php */