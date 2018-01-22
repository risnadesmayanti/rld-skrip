<?php

class Belajar extends CI_Controller {

        public function index()
        {
               
                if ($this->form_validation->run() == FALSE)
                {
                        $this->load->view('user/table_kuisioner');
                }
                else
                {
                        $this->load->view('user/success-page');
                }
        }
}