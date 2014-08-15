<?php
class Mailer_Model extends CI_Model {
    /*
     * @author name md. Shafiul Alam
     * @created date 11-06-2013
     * @ parameter $data,$email_template,
     * $data is array which content a email basic info and
     * $email_tempalte is variable which cotent a template body name.
     * This return void. 
     * 
     */
    public function sendEmail($data,$email_template)
    {
       $this->load->library('email'); 
       $this->email->set_mailtype('html');
       $this->email->from($data['from_address'],$data['admin_full_name']);
       $this->email->to($data['to_address']);
       $this->email->subject($data['subject']);
       $body=$this->load->view('mailscript/'.$email_template,$data,true);
       echo $body;
       exit();
       $this->email->message($body);
       $this->email->send();
       $this->email->clear();
    }   
    
}

?>
