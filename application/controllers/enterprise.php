<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class enterprise extends CI_Controller {

	public function view($md5)
	{
		$this->load->view('enterprise/templates/header');
		$this->load->view('enterprise/dashboard');
		$this->load->view('enterprise/templates/footer');
	}

	public function komunikasi()
	{
		$this->load->view('enterprise/templates/header');
		$this->load->view('enterprise/komunikasi');
		$this->load->view('enterprise/templates/footer');
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