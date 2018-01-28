<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Faktor_luftman extends CI_Model {
	function __construct(){ parent::__construct();
        
	}
    function insert_agenda($data){        
    	$this->db->insert('t_factor_luftman', $data);    
    }       
    function select_all(){        
    	$this->db->select('*'); 
    	$this->db->from('t_factor_luftman'); 
    //	$this->db->order_by('date_modified', 'desc');
		
		return $this->db->get();
    }        
    function select_by_id($id_factor){        
    	$this->db->select('*'); 
    	$this->db->from('t_factor_luftman'); 
    	$this->db->where('id', $id_factor);
		
		return $this->db->get();
    }        
    function select_by_idf($id_factor){        
        $this->db->select('*'); 
        $this->db->from('t_factor_luftman'); 
        $this->db->where('idf', $id_factor);
        
        return $this->db->get();
    }       
    function update_factor($id_factor, $data){ 
    	$this->db->where('id', $id_factor); 
    	$this->db->update('t_factor_luftman', $data); 
    }        
    function delete_agenda($id_factor){        
    	$this->db->where('id', $id_factor); 
    	$this->db->delete('t_factor_luftman');     
    }
    function join_indikator(){
        $this->db->select('t_factor_luftman.*,t_indicator_luftman.*'); 
        $this->db->from('t_factor_luftman'); 
        $this->db->join('t_indicator_luftman','t_factor_luftman.id = t_indicator_luftman.idf');
        return $this->db->get();
    }
}
/* End of file faktor_luftman.php */
/* Location: ./application/models/faktor_luftman.php */