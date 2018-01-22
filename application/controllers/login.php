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

	public function proses_tambah_user()
	{

		$this->form_validation->set_rules('username','Nama Pengguna','required');
		$this->form_validation->set_rules('jabatan','Jabatan','required');
		$this->form_validation->set_rules('a1', 'Ya', 'required');
		$this->form_validation->set_rules('a2', 'Ya', 'required');
		$this->form_validation->set_rules('a3', 'Ya','required');
 
		if($this->form_validation->run() != false){
			$data['username'] = $this->input->post('username');
			$data['jabatan'] = $this->input->post('jabatan');
			$data['a1'] = $this->input->post('a1');
			$data['a2'] = $this->input->post('a2');
			$data['a3'] = $this->input->post('a3');
			
			$where = array(
				'username' => 'user',
				'a1' => $data['a1'],
				'a2' => $data['a2'],
				'a3' => $data['a3']
			);

			$cek = $this->User->cek_val($where)->num_rows();

			if ($cek > 0) {
				
				//$this->User->insert($data);
				
				$id_user = $this->db->query('select id from t_user where id = (select MAX(id) from t_user)')->result();
				$username_user = $this->db->query('select username from t_user where id = (select MAX(id) from t_user)')->result();
				
				$data_session = array(
					'id' => $id_user,
					'username' => $username_user,
					'status' => 1
				);

				$this->session->set_userdata($data_session);
				//print_r($data_session);

				redirect('index.php/isi_kuisioner');

				// $data2['faktor_luftman'] = $this->Faktor_luftman->select_all()->result();
				// $data2['faktor_indikator'] = $this->Faktor_luftman->join_indikator()->result();
				// $data2['indikator_likert'] = $this->Likert_luftman->join_indikator()->result();

				// $this->load->view('user/kuisioner',$data2);
			
			}else{
				$this->load->view('user/dashboard');
				
			}

			// echo($cek)."<br>";
			
			// for ($i=1; $i <7 ; $i++) { 
			// 	# code...
			// 	$this->db->query('update t_measurement set idin='.$i.' where idin=0');
			// }

		
//			$data2['measurement'] = $this->Measurement->join_measurement_user()->result();

			// var_dump($row);

			//insert ke measurement select id_user
			// $data = $this->

			//echo "Form validation oke";
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