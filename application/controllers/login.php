<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		//Do your magic here
		
	}

	public function index()
	{
		// $user = $this->input->post('username');
		// $pass = $this->input->post('password');
		
		// if ($user == 'admin' && $pass == '123') {
		// 	$this->session->userdata('username', $user);
		// 	//$this->session->userdata('password', $pass);

		// 	redirect(site_url('welcome'));
		// }elseif ($user == 'user' && $pass == '321') {
		// 	# code...
		// 	$this->session->userdata('username', $user);
		// 	redirect(site_url('welcome2'));
		// }
		// else{
		// 	$this->load->view('login');
		// }		
			$this->load->view('user/dashboard');

	}

	public function admin_page()
	{
		$this->load->view('user_page');
	}

	public function isi_kuisioner()
	{
		# code...
		$this->load->view('user/kuisioner');
	}

	public function login(){
		$insert = $this->input->post();
		// var_dump($insert);
		$this->User->insert($insert);
	}


	public function logout()
	{
		$this->session->unset_userdata(array('username' => '') );
		redirect(site_url(login));
	}

}

/* End of file login.php */
/* Location: ./application/controllers/login.php */