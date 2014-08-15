<?php
if ( ! defined('BASEPATH'))
    exit('No direct script access allowed');
session_start();
class Login extends CI_Controller {
    //put your code here
    public function __construct() {
        parent::__construct();
        $this->load->model('login_model');
        $this->load->model('mailer_model','m_model',true);
        $user_id=$this->session->userdata('user_id');
        //echo "-----------".$user_id;
        if($user_id!=NULL)
        {
           redirect("blogger","refresh"); 
        }
    }
    public function sign_up()
    {
     $data=array();
     $data['maincontent']=$this->load->view('sign_up','',true);
     $data['title']='Sign Up';
     $this->load->view('home',$data);
    }
    public function save_user()
    {
        $data=array();
        
        //$data['first_name']=$_POST['first_name'];
        $data['first_name']=$this->input->post('first_name',true);
        $data['last_name']=$this->input->post('last_name',true);
        $data['email_address']=$this->input->post('email_address',true);
        $data['password']=$this->input->post('password',true);
        $data['password']=  md5($data['password']);
        $data['address']=$this->input->post('address',true);
        $data['mobile_no']=$this->input->post('mobile_no',true);
        $data['city']=$this->input->post('city',true);
        $data['gander']=$this->input->post('gander',true);
        $data['country']=$this->input->post('country',true);
        $data['zip_code']=$this->input->post('zip_code',true);
        
        $result=$this->login_model->select_user_by_email_address($data['email_address']);
        if($result)
        {
            $sdata=array();
            $sdata['message']="User Alrady Registered";
            $this->session->set_userdata($sdata);
            redirect("login/sign_up");
        }
        else{
        $user_id=$this->login_model->save_user_info($data);
        //echo '-------'.$user_id;
        //exit();
        /*-----------------Start Activation Email--------------*/
        $mdata=array();
        $mdata['user_id']=$user_id;
        $mdata['from_address']="topu_18_26@yahoo.com";
        $mdata['admin_full_name']="Blog Batch 06";
        $mdata['to_address']=$data['email_address'];
        $mdata['subject']="Activation Email";
        $mdata['last_name']=$data['last_name'];
        $mdata['password']=$this->input->post('password',true);
        $this->m_model->sendEmail($mdata,'activation_email');
        
        
        /*-----------------End Activation Email--------------*/
        redirect("login/save_succesfully");
        }
    }
    
    public function save_succesfully()
    {
        $data=array();
        $data['maincontent']="<h2>Save User Information Successfully !</h2>";
        $this->load->view('home',$data);
        
    }
    public function user_login()
    {
     $data=array();
     $data['maincontent']=$this->load->view('login','',true);
     $data['title']='Login';
     $this->load->view('home',$data);
    }
    
    public function check_login()
    {
        $email_address=$this->input->post('email_address',true);
        $password=$this->input->post('password',true);
        $result=$this->login_model->check_login_info($email_address,$password);
        /*echo '<pre>';
        print_r($result);
        exit();*/
        $sdata=array();
        if($result)
        {
            if($result->activation_status==1)
            {
            $sdata['full_name']=$result->first_name.' '.$result->last_name;
            $sdata['user_id']=$result->user_id;
            $sdata['login_status']=TRUE;
            $this->session->set_userdata($sdata);
            redirect("blogger","refresh");
            }
            else{
                $sdata['exception']="Your Account is Inactive.Please Check your email and by clicking the given link active your account.";
                $this->session->set_userdata($sdata);
                redirect("login/user_login");
            }
            
        }
        else{
            
            $sdata['exception']="User Email Or Password Invalide !";
            $this->session->set_userdata($sdata);
            redirect("login/user_login");
        }
        
    }
    
    
    
}

?>
