<?php
class Super_Admin_Model extends CI_Model {
    //put your code here
    public function save_category_info($data)
    {
        $this->db->insert('tbl_category',$data);
    }
}
?>
