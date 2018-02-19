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

    function diagramAll($id){
      // SELECT t_indicator_luftman.idf,t_measurement.* FROM t_indicator_luftman, t_measurement, t_user where t_indicator_luftman.id = t_measurement.idin and t_user.id = t_measurement.id_user and t_user.tipe = 1 order by t_indicator_luftman.idf
      $this->db->select('t_indicator_luftman.idf,t_measurement.* FROM t_indicator_luftman, t_measurement, t_user');
      $this->db->where('t_indicator_luftman.id = t_measurement.idin and t_user.id = t_measurement.id_user');
      $this->db->where('t_user.tipe',$id);
      $this->db->order_by('t_indicator_luftman.idf');

      return $this->db->get();
    }

    function diagramFaktor($kat,$idf){
      // SELECT t_indicator_luftman.idf,t_measurement.* FROM t_indicator_luftman, t_measurement, t_user where t_indicator_luftman.id = t_measurement.idin and t_user.id = t_measurement.id_user and t_user.tipe = 1 order by t_indicator_luftman.idf
      $this->db->select('t_indicator_luftman.idf,t_measurement.* FROM t_indicator_luftman, t_measurement, t_user');
      $this->db->where('t_indicator_luftman.id = t_measurement.idin and t_user.id = t_measurement.id_user');
      $this->db->where('t_user.tipe',$kat);
      $this->db->where('t_indicator_luftman.idf',$idf);
      $this->db->order_by('t_indicator_luftman.idf');

      return $this->db->get();
    }    


   function standard_deviation($aValues)
    {
        $fMean = array_sum($aValues) / count($aValues);
        //print_r($fMean);
        $fVariance = 0.0;
        foreach ($aValues as $i)
        {
            $fVariance += pow($i - $fMean, 2);

        }       
        $size = count($aValues) - 1;
        return (float) sqrt($fVariance)/sqrt($size);
    }
  public function getLevel($data,$val){
    $avg = array_sum($data)/count($data);
    $std = $this->standard_deviation($data);
    if($val <= $avg-(1.5*$std)) return 1;
    else if($val > $avg-(1.5*$std) && $val <= $avg-(0.5*$std)) return 2;
    else if($val > $avg-(0.5*$std) && $val <= $avg+(0.5*$std)) return 3;
    else if($val > $avg+(0.5*$std) && $val <= $avg+(1.5*$std)) return 4;
    else if($val > $avg+(1.5*$std)) return 5;
  }

    function update_value($id_indicator, $data){ 
    	$this->db->where('id_user', $id_indicator); 
    	$this->db->update('t_measurement', $data); 
    }        

    //-------------------------
    //Enterprise
    function diagramAllEnterprise($univ){
      // SELECT t_indicator_luftman.idf,t_measurement.* FROM t_indicator_luftman, t_measurement, t_user where t_indicator_luftman.id = t_measurement.idin and t_user.id = t_measurement.id_user and t_user.tipe = 1 order by t_indicator_luftman.idf
      $this->db->select('t_indicator_luftman.idf,t_measurement.* FROM t_indicator_luftman, t_measurement, t_user');
      $this->db->where('t_indicator_luftman.id = t_measurement.idin and t_user.id = t_measurement.id_user');
      $this->db->where('t_user.kategori',$univ);
      $this->db->order_by('t_indicator_luftman.idf');

      return $this->db->get();
    }
    function diagramFaktorEnterprise($kat,$idf){
      // SELECT t_indicator_luftman.idf,t_measurement.* FROM t_indicator_luftman, t_measurement, t_user where t_indicator_luftman.id = t_measurement.idin and t_user.id = t_measurement.id_user and t_user.tipe = 1 order by t_indicator_luftman.idf
      $this->db->select('t_indicator_luftman.idf,t_measurement.* FROM t_indicator_luftman, t_measurement, t_user');
      $this->db->where('t_indicator_luftman.id = t_measurement.idin and t_user.id = t_measurement.id_user');
      $this->db->where('t_user.kategori',$kat);
      $this->db->where('t_indicator_luftman.idf',$idf);
      $this->db->order_by('t_indicator_luftman.idf');

      return $this->db->get();
    }        

}

/* End of file measurement.php */
/* Location: ./application/models/measurement.php */