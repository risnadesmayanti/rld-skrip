<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Likert_luftman extends CI_Model {

	function __construct(){ parent::__construct();
        
	}

    function insert_indicator($data){        
    	$this->db->insert('t_likert_luftman', $data);    
    }       

    function select_all(){        
    	$this->db->select('*'); 
    	$this->db->from('t_likert_luftman'); 
    //	$this->db->order_by('date_modified', 'desc');
		
		return $this->db->get();
    }        

    function select_by_id($id_indicator){        
    	$this->db->select('*'); 
    	$this->db->from('t_likert_luftman'); 
    	$this->db->where('id', $id_indicator);
		
		return $this->db->get();
    }        

    function select_by_idf($id_indicator){        
    	$this->db->select('*'); 
    	$this->db->from('t_likert_luftman'); 
    	$this->db->where('idf', $id_indicator);
		
		return $this->db->get();
    } 

    function join_indikator(){
        $this->db->select('t_indicator_luftman.*,t_likert_luftman.*'); 
        $this->db->from('t_indicator_luftman'); 
        $this->db->join('t_likert_luftman','t_indicator_luftman.id = t_likert_luftman.idin');
        return $this->db->get();
    }

    function update_indicator($id_indicator, $data){ 
    	$this->db->where('id', $id_indicator); 
    	$this->db->update('t_likert_luftman', $data); 
    }        

    function delete_indicator($id_indicator){        
    	$this->db->where('id', $id_indicator); 
    	$this->db->delete('t_likert_luftman');     
    }	
}

/* End of file likert_luftman.php */
/* Location: ./application/models/likert_luftman.php */