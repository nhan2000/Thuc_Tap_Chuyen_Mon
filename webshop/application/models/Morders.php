<?php
class Morders extends MY_Model {
    public function __construct()
    {
        parent::__construct();
        $this->table = $this->db->dbprefix('order');

    }

    public function orders_listorders($limit, $first)
    {
       
        $this->db->order_by('created', 'desc');
        $query = $this->db->get($this->table, $limit, $first);
        return $query->result_array();
    } 
    public function orders_count()
    {
        
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

    // chi itet don haang chua luu
    public function orders_detail($id)
    {
        $this->db->where('id',$id);
       
        $query = $this->db->get($this->table);
        return $query->row_array();
    }
    // chi itet don haang da luu 
    public function orders_detail_save($id)
    {
        $this->db->where('id',$id);
      
        $query = $this->db->get($this->table);
        return $query->row_array();
    }

    public function orders_customerid($customerid)
    {
        $this->db->where('customerid',$customerid);
        $this->db->where('status', 1);
       
        $query = $this->db->get($this->table);
        return $query->result_array();
    }



    public function orders_trash_count()
    {
      
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

    public function check_status_trash($id)
    {
        $this->db->where('id', $id);
        $this->db->where('status', 1);
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

    public function orders_update($mydata, $id)
    {
        $this->db->where('id',$id);
        $this->db->update($this->table, $mydata);
    }

    public function orders_trash($limit, $first)
    {
       
        $query = $this->db->get($this->table, $limit, $first);
        return $query->result_array();
    }

    public function orders_delete($id)
    {
        $this->db->where('id',$id);
        $this->db->delete($this->table);
    }

    
    public function order_follow_month($year, $month)
    {
        $this->db->where('status', 1);
        
        $this->db->where('YEAR()', $year);
        $this->db->where('MONTH()', $month);
        $query = $this->db->get($this->table);
        return $query->result_array();
    }

    public function orders_update_number_product($mydata,$id)
    {
        $this->db->where('id',$id);
        $this->db->update('db_product', $mydata);
    }
    public function product_number_buy($id)
    {
        $this->db->where('id', $id);
        $this->db->limit(1);
        $query = $this->db->get('db_product');
        $row=$query->row_array();
        return $row['number_buy']; 
    }

    //header tb don hang
    public function orders_count_header_not()
    {
        $this->db->where('status', 0);
     
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }
    public function orders_count_header()
    {
        $this->db->where('status', 1);
        
        $query = $this->db->get($this->table);
        return count($query->result_array());
    }

}