<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Measurement extends CI_Model {

	function __construct(){ parent::__construct();
        
	}

    function insert_measurement($data){        
    	$this->db->insert('t_measurement', $data);    
    }   

    function insert_user_id($value)
        {
        	$this->db->insert('id_user', $value);
        }    

    function select_all(){        
    	$this->db->select('*'); 
    	$this->db->from('t_measurement'); 
    //	$this->db->order_by('date_modified', 'desc');
		
		return $this->db->get();
    }        

    function select_by_id($id_indicator){        
    	$this->db->select('*'); 
    	$this->db->from('t_measurement'); 
    	$this->db->where('id', $id_indicator);
		
		return $this->db->get();
    }        

  
     function join_measurement_user(){

        $this->db->select('t_measurement.*, t_user.id'); 
        $this->db->from('t_measurement'); 
        $this->db->join('t_user','t_measurement.id_user = t_user.id');
        return $this->db->get();
    }

  //   function select_by_idf($id_indicator){        
  //   	$this->db->select('*'); 
  //   	$this->db->from('t_indicator_luftman'); 
  //   	$this->db->where('idf', $id_indicator);
		
		// return $this->db->get();
  //   } 

  //   function select_by_id2($id_indicator){        
  //   	$this->db->select('*'); 
  //   	$this->db->from('t_indicator_luftman'); 
  //   	$this->db->where('idf', $id_indicator);
		
		// return $this->db->get();
  //   } 

    function update_value($id_indicator, $data){ 
    	$this->db->where('id_user', $id_indicator); 
    	$this->db->update('t_measurement', $data); 
    }        


}

/* End of file measurement.php */
/* Location: ./application/models/measurement.php */