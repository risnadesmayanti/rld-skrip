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
	public function debug(){
		echo date("Y-m-d");
	}

	public function proses_tambah_user()
	{

		$this->form_validation->set_rules('username','Nama Pengguna','required');
		//$this->form_validation->set_rules('jabatan','Jabatan','required');
		$this->form_validation->set_rules('a1', 'Ya', 'required');

 
		if($this->form_validation->run() != false){
			$data['username'] = $this->input->post('username');
			$data['date_access'] = date("Y-m-d");
			//	$data['jabatan'] = $this->input->post('jabatan');
			$data['a1'] = $this->input->post('a1');
			$data['kategori'] = $this->input->post('e1');
			$data['jabatan'] = $this->input->post('divisi');

			
			$where = array(
				'username' => 'user',
				'a1' => $data['a1']
			);

			$cek = $this->User->cek_val($where)->num_rows();

			if ($cek > 0) {
				
				
				
				// $id_user = $this->db->query('select id from t_user where id = (select MAX(id) from t_user)')->result();
				// $username_user = $this->db->query('select username from t_user where id = (select MAX(id) from t_user)')->result();
				$id_user = $this->User->insert($data);
				$username_user = $data['username'];
				
				$data_session = array(
					'id' => $id_user,
					'username' => $username_user,
					'status' => 1,
					'enterprise' => $data['kategori'],
					'jabatan' => $data['jabatan']
					// 'jawab' => $a
				);

				$this->session->set_userdata($data_session);
				// print_r($data_session);

				redirect('index.php/isi_kuisioner#komunikasi');

				// $data2['faktor_luftman'] = $this->Faktor_luftman->select_all()->result();
				// $data2['faktor_indikator'] = $this->Faktor_luftman->join_indikator()->result();
				// $data2['indikator_likert'] = $this->Likert_luftman->join_indikator()->result();

				// $this->load->view('user/kuisioner',$data2);
			
			}else{
				redirect('/');
			}
		}else{
			$this->load->view('user/dashboard');
		}


		//rules

		//redirect('welcome');
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