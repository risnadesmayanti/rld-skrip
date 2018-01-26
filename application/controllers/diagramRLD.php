<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DiagramRLD extends CI_Controller {

	public function index()
	{
		$this->load->view('admin/templates/header');
		$this->load->view('admin/pt');
		$this->load->view('admin/templates/footer');
	}

}

/* End of file diagramRLD.php */
/* Location: ./application/controllers/diagramRLD.php */