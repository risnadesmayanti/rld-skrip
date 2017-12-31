<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Indikator_luftman extends CI_Model {

	function __construct(){ parent::__construct();
        
	}

    function insert_indicator($data){        
    	$this->db->insert('t_indicator_luftman', $data);    
    }       

    function select_all(){        
    	$this->db->select('*'); 
    	$this->db->from('t_indicator_luftman'); 
    //	$this->db->order_by('date_modified', 'desc');
		
		return $this->db->get();
    }        

    function select_by_id($id_indicator){        
    	$this->db->select('*'); 
    	$this->db->from('t_indicator_luftman'); 
    	$this->db->where('id', $id_indicator);
		
		return $this->db->get();
    }        

    function select_by_id2($id_indicator){        
    	$this->db->select('*'); 
    	$this->db->from('t_indicator_luftman'); 
    	$this->db->where('idf', $id_indicator);
		
		return $this->db->get();
    } 

    function update_indicator($id_indicator, $data){ 
    	$this->db->where('id', $id_indicator); 
    	$this->db->update('t_indicator_luftman', $data); 
    }        

    function delete_indicator($id_indicator){        
    	$this->db->where('id', $id_indicator); 
    	$this->db->delete('t_indicator_luftman');     
    }


}

/* End of file indicator_luftman.php */
/* Location: ./application/models/indicator_luftman.php */