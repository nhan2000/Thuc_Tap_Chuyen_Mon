<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('user_model');
		$this->load->model('slider_model');
		$this->load->library('form_validation');
		$this->load->helper('form');
	}

	public function index()
	{
		$this->data['temp'] = 'site/user/index.php';
		$this->load->view('site/layoutsub', $this->data);
	}
	public function register()
	{
		$message_success = $this->session->flashdata('message_success');
		$this->data['message_success'] = $message_success;

		$message_fail = $this->session->flashdata('message_fail');
		$this->data['message_fail'] = $message_fail;

		$this->form_validation->set_error_delimiters('<div class="alert alert-danger" role="alert" style="padding:5px;border-bottom:0px;">', '</div>');
		if ($this->input->post()) {
			$this->form_validation->set_rules('name', 'Họ tên', 'required');
			$this->form_validation->set_rules('email', 'Email đăng nhập', 'required|valid_email|callback_check_email');
			$this->form_validation->set_rules('password', 'Mật Khẩu', 'required');
			$this->form_validation->set_rules('re_password', 'Mật khẩu Nhập Lại', 'matches[password]');
			$this->form_validation->set_rules('address', 'Địa chỉ', 'required');
			$this->form_validation->set_rules('phone', 'Điện thoại', 'required');
			$this->form_validation->set_rules('phone', 'Điện thoại', 'numeric');
			$this->form_validation->set_rules('phone', 'Điện thoại', 'required|numeric|max_length[11]');
			// $this->form_validation->set_rules('phone','Điện thoại','min_length[10]');
			if ($this->form_validation->run()) {
				$password = $this->input->post('password');
				$data = array();
				$data = array(
					'name' => $this->input->post('name'),
					'email' => $this->input->post('email'),
					'password' => md5($password),
					'address' => $this->input->post('address'),
					'phone' => $this->input->post('phone'),
					'created' => date('Y-m-d H:i:s')
				);
				if ($this->user_model->create($data)) {
					$this->session->set_flashdata('message_success', 'Đăng ký thành công -> Mời bạn chuyển sang đăng nhập');
				} else {
					$this->session->set_flashdata('message_fail', 'Đăng ký thất bại');
				}
				redirect(base_url('user/login'));
			}
		}
		$this->load->view('site/user/register', $this->data);
	}
	function check_email()
	{
		$email = $this->input->post('email');
		$where = array('email' => $email);
		if ($this->user_model->check_exists($where)) {
			$this->form_validation->set_message(__FUNCTION__, 'Tài khoản đã tồn tại');
			return FALSE;
		}
		return TRUE;
	}
	public function login()
	{
		$this->form_validation->set_error_delimiters('<p class="text-center" style="padding:5px;border-bottom:0px;">', '</p>');
		$user = $this->session->userdata('user');
		if (isset($user)) {
			redirect(base_url());
		}
		$message_success = $this->session->flashdata('message_success');
		$this->data['message_success'] = $message_success;

		$message_fail = $this->session->flashdata('message_fail');
		$this->data['message_fail'] = $message_fail;
		if ($this->input->post()) {
			$this->form_validation->set_rules('email', 'Email đăng nhập', 'required|valid_email');
			$this->form_validation->set_rules('password', 'Mật khẩu', 'required');
			$this->form_validation->set_rules('login', 'login', 'callback_check_login');
			if ($this->form_validation->run()) {
				$user = $this->get_info_user();
				$this->session->set_userdata('user', $user);
				redirect(base_url('user/login'));
			}
		}
		$this->load->view('site/user/login', $this->data);
	}
	//Đăng nhập
	public function check_login()
	{
		$user = $this->get_info_user();
		if ($user) {
			return true;
		}
		$this->form_validation->set_message(__FUNCTION__, 'Sai email hoặc mật khẩu');
		return false;
	}
	//Lấy thông tin người dùng
	public function get_info_user()
	{
		$user = array();
		$email = $this->input->post('email');
		$password = $this->input->post('password');
		$where = array('email' => $email, 'password' => md5($password));
		$user = $this->user_model->get_info_rule($where);
		return $user;
	}
	public function logout()
	{
		if ($this->session->userdata('user')) {
			$this->session->unset_userdata('user');
		}
		redirect(base_url());
	}

	function edit()
	{

		// if (!$this->session->userdata('user_id_login')) {
		// 	redirect(site_url('user/login'));
		// }

		$user = $this->user_model->get_list();
		$this->data['user']= $user;
		// $id_user = $this->session->userdata('user_id_login');
		// $user_info = $this->user_model->get_info($id_user);
		// // if (!$user_info) {
		// // 	redirect();
		// // }
		// $this->data['user_info'] = $user_info;
		// // if(!$id){
		// // 	redirect('site/user/edit');
		// // }
		// $user_info = $this->user_model->get_info($id);
		// $this->load->library('form_validation');
		// $this->load->helper('form');
		// if($this->input->post()){
		// 	$password = $this->input->post('password');
		// 	if($password){
		// 		$this->form_validation->set_rules('password', 'Nhập password ', 'required|min_length[4]' );
		// 	}
		// 	$this->form_validation->set_rules('name', 'Nhập Họ tên ', 'required' );
		// 	$this->form_validation->set_rules('phone', 'Nhập Số Điện Thoại ', 'required' );
		// 	$this->form_validation->set_rules('adress', 'Nhập Địa Chỉ', 'required' );
		// 	if($this->form_validation->run()){
		// 		$name = $this->input->post('name');
		// 		$phone = $this->input->post('phone');
		// 		$adress = $this->input->post('adress');
		// 		$data = array();
		// 		$data = array(
		// 			'name' => $name,
		// 			'phone' => $phone,
		// 			'adress' => $adress,
		// 		);
		// 		if($password){
		// 			$password = md5($password);
		// 			$data['password'] = $password;
		// 		}
		// 		if($this->user_model->update($id, $data)){
		// 			$this->session->set_flashdata('message_update', 'Cập nhật thành công');
		// 		}else{
		// 			$this->session->set_flashdata('message_update', 'Có lỗi khi cập nhật');
		// 		}
		// 		redirect('user/index');
		// 	}
		// }
		//load view

		$this->data['temp'] = 'site/user/edit';
		$this->load->view('site/layoutsub', $this->data);
	}
}
