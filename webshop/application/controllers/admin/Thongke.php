<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Thongke extends MY_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('product_model');
        $this->load->model('order_model');
		$this->load->model('catalog_model');
        $this->load->model('transaction_model');
        $this->load->model('Morders');
		$this->load->model('slider_model');
		$this->load->model('user_model');
		$this->load->model('admin_model');

		$this->load->library('form_validation');
		$this->load->helper('form');
		$this->load->library('upload');
		$this->load->library('upload_library');

	}

    public function index()
	{
		
		$total_product = $this->product_model->get_total();
		$this->data['total_product']=$total_product;

		$total_transaction = $this->transaction_model->get_total();
		$this->data['total_transaction']=$total_transaction;

		$total_user = $this->user_model->get_total();
		$this->data['total_user']=$total_user;

	;

		$total_admin = $this->admin_model->get_total();
		$this->data['total_admin']=$total_admin;

		$total_slider = $this->slider_model->get_total();
		$this->data['total_slider']=$total_slider;

		$input = array();
		$input['where'] = array('parent_id >=' => '2');
		$total_catalog = $this->catalog_model->get_total($input);
		$this->data['total_catalog']=$total_catalog;

	

		
		$user = $this->transaction_model->get_list();
		$this->data['user']= $user;





		$this->data['temp']='admin/thongke/index.php';
		$this->load->view('admin/main',$this->data);
	}

	

	




}