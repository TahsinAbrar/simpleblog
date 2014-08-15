<?php
class Welcome_Model extends CI_Model {
    //put your code here
    public function select_all_category()
    {
        $this->db->select('*');
        $this->db->from('tbl_category');
        $query_result=$this->db->get();
        $result=$query_result->result();
        return $result;
    }
    public function save_comments_info($data)
    {
        $this->db->insert('tbl_comments',$data);
    }
    public function active_user_account_status($user_id)
    {
        $this->db->set('activation_status',1);
        $this->db->where('user_id',$user_id);
        $this->db->update('tbl_user');
    }
}

?>