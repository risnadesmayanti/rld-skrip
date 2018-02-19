<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Model {

  private $tableName;

  public function __construct(){
    parent::__construct();
    $this->tableName = "t_user";
  }

  function cek_val($where){
      return $this->db->get_where($this->tableName,$where);
  }
  public function selectAll(){
    $this->db->select('*');
    $this->db->from($this->tableName);
    // $this->db->where('username',$username);
    return $this->db->get();
  }
  public function selectByUsername($username){
    $this->db->select('*');
    $this->db->from($this->tableName);
    $this->db->where('username',$username);
    return $this->db->get();
  }
  public function selectById($id){
    $this->db->select('*');
    $this->db->from($this->tableName);
    $this->db->where('id',$id);
    return $this->db->get();
  } 

  public function insert($data){
    $this->db->insert($this->tableName,$data);

    return $this->db->insert_id();
  }
  
  public function update($id,$data){
    $this->db->set($data);
    $this->db->where('id',$id);
    $this->db->update($this->tableName);
  }
  
  public function delete($id){
    $this->db->where('id',$id);
    $this->db->delete($this->tableName);
  } 
  public function selectGroupByDate(){
    $this->db->select("date_access as y, count(*) as Jumlah");
    $this->db->from($this->tableName);
    $this->db->where('date_access BETWEEN (NOW() - INTERVAL 14 DAY) AND NOW()');
    $this->db->order_by('date_access','DESC');
    $this->db->group_by('date_access');
    // $this->db->group_by('jabatan');
    // $this->db->group_by('tahun_wisuda');
    return $this->db->get();    
  }
  public function selectGroupByJabatan(){
    $this->db->select("jabatan as y");
    $this->db->from($this->tableName);
    $this->db->group_by('jabatan');
    // $this->db->group_by('kategori');
    return $this->db->get();        
  }
  public function selectGroupByTipe(){
    $this->db->select("tipe as x");
    $this->db->from($this->tableName);
    $this->db->group_by('tipe');
    // $this->db->group_by('kategori');
    return $this->db->get();        
  }
  public function selectGroupByJabatan2(){
    $this->db->select("jabatan as y, tipe as k, count(*) as Jumlah");
    $this->db->from($this->tableName);
    $this->db->group_by('jabatan');
    $this->db->group_by('tipe');
    return $this->db->get();        
  }

  public function insertrating($data){
    $this->db->insert('t_rating',$data);
  }

  //Enterprise
  //
  public function selectAllEnterprise($univ){
    $this->db->select('*');
    $this->db->from($this->tableName);
    $this->db->where('kategori',$univ);
    return $this->db->get();
  }
  public function selectGroupByDateEnterprise($univ){
    $this->db->select("date_access as y, count(*) as Jumlah");
    $this->db->from($this->tableName);
    $this->db->where('date_access BETWEEN (NOW() - INTERVAL 14 DAY) AND NOW()');
    $this->db->where('kategori',$univ);
    $this->db->order_by('date_access','DESC');
    $this->db->group_by('date_access');
    // $this->db->group_by('jabatan');
    // $this->db->group_by('tahun_wisuda');
    return $this->db->get();    
  }
  public function selectGroupByJabatanEnterprise($univ){
    $this->db->select("jabatan as y");
    $this->db->from($this->tableName);
    $this->db->group_by('jabatan');
    $this->db->where('kategori',$univ);
    // $this->db->group_by('kategori');
    return $this->db->get();        
  }
  public function selectGroupByTipeEnterprise($univ){
    $this->db->select("tipe as x");
    $this->db->from($this->tableName);
    $this->db->group_by('tipe');
    $this->db->where('kategori',$univ);
    // $this->db->group_by('kategori');
    return $this->db->get();        
  }
}
