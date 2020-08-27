<?php 
     require_once'../classes/database.php';

class Admin{

	public function __construct(){
         
         $obj_db = new Database();
		 
	}
    public function save_catagory_info($data){
        if (!preg_match('/^([A-Za-z0-9-_]+)$/', $data['catagory_name'])) {
           $message = 'Catagory name must not be empty';
           return $message;
        }
    	$sql = "INSERT INTO tbl_catagory(catagory_name,catagory_description,publication_status) VALUES('$data[catagory_name]','$data[catagory_description]','$data[publication_status]')";
    	mysql_query($sql);
    	$message = 'Catagory info saved successfully';
    	return $message;
        //echo $data['catagory_name'];
    }
    public function select_all_catagory(){
        $sql = "SELECT * FROM tbl_catagory";
        $query_result = mysql_query($sql);
        return $query_result; 
    }
     public function all_order_itms($shipid){
        $sql = "SELECT * FROM listofcartitem WHERE shipping_id = '$shipid'";
        $query_result = mysql_query($sql);
        return $query_result; 
    }
    public function published_catagory($id){
        $sql = "UPDATE tbl_catagory SET publication_status='1'WHERE catagory_id='$id'";
        mysql_query($sql);
       header('Location:manage_catagory.php');

    }
    public function unpublished_catagory($id){
       $sql = "UPDATE tbl_catagory SET publication_status='0'WHERE catagory_id='$id'";
        mysql_query($sql);
       header('Location:manage_catagory.php');
    }
    public function delete_catagory($id){
        $sql = "DELETE FROM tbl_catagory WHERE catagory_id='$id'";
         mysql_query($sql);
       header('Location:manage_catagory.php');

    }
    public function select_catagory_info_by_id($catagory_id){
        $sql = "SELECT * FROM tbl_catagory WHERE catagory_id='$catagory_id'";
        $query_result = mysql_query($sql);
        return $query_result;
    }
    public function update_catagory_info($data){
        $sql = "UPDATE tbl_catagory SET catagory_name='$data[catagory_name]',catagory_description='$data[catagory_description]',publication_status='$data[publication_status]' WHERE catagory_id='$data[catagory_id]'";
        mysql_query($sql);
        header('Location:manage_catagory.php');
    }
    
    

    //manufacturer
     public function save_manufacturer_info($data){

        if (!preg_match('/^([A-Za-z0-9-_]+)$/', $data['manufacturer_name'])) {
           $message = 'Manufacturer_name name must not be empty';
           return $message;
         
         }
        $sql = "INSERT INTO tbl_manufacturer(manufacturer_name,manufacturer_description,publication_status) VALUES('$data[manufacturer_name]','$data[manufacturer_description]','$data[publication_status]')";
        mysql_query($sql);
        $message = 'Manufacturer info saved successfully';
        return $message;
    }


	public function logout(){
		session_destroy();

		session_start();
		$_SESSION['message']='Logged Out Successfully!';
        
        header('Location:index.php');

	}
    public function select_all_manufacturer(){
        $sql = "SELECT * FROM tbl_manufacturer";
        $query_result = mysql_query($sql);
        return $query_result; 
    }
     public function published_manufacturer($id){
        $sql = "UPDATE tbl_manufacturer SET publication_status='1'WHERE manufacturer_id='$id'";
        mysql_query($sql);
       header('Location:manage_manufacturer.php');

    }
    public function unpublished_manufacturer($id){
       $sql = "UPDATE tbl_manufacturer SET publication_status='0'WHERE manufacturer_id='$id'";
        mysql_query($sql);
       header('Location:manage_manufacturer.php');
    }
    public function delete_manufacturer($id){
        $sql = "DELETE FROM tbl_manufacturer WHERE manufacturer_id='$id'";
         mysql_query($sql);
       header('Location:manage_manufacturer.php');

    }
    public function select_manufacturer_info_by_id($manufacturer_id){
        $sql = "SELECT * FROM tbl_manufacturer WHERE manufacturer_id='$manufacturer_id'";
        $query_result = mysql_query($sql);
        return $query_result;
    }
    public function update_manufacturer_info($data){
        $sql = "UPDATE tbl_manufacturer SET manufacturer_name='$data[manufacturer_name]',manufacturer_description='$data[manufacturer_description]',publication_status='$data[publication_status]' WHERE manufacturer_id='$data[manufacturer_id]'";
        mysql_query($sql);
        header('Location:manage_manufacturer.php');
    }


    //product
     public function select_all_product(){
            $sql = "SELECT * FROM tbl_product";
            $query_result = mysql_query($sql);
            return $query_result; 
    }
     public function published_product($id){
        $sql = "UPDATE tbl_product SET publication_status='1'WHERE product_id='$id'";
        mysql_query($sql);
       header('Location:manage_product.php');

    }
     public function unpublished_product($id){
       $sql = "UPDATE tbl_product SET publication_status='0'WHERE product_id='$id'";
        mysql_query($sql);
       header('Location:manage_product.php');
    }
    public function delete_product($id){
        $sql = "DELETE FROM tbl_product WHERE product_id='$id'";
         mysql_query($sql);
       header('Location:manage_product.php');

    }
    public function select_product_info_by_id($product_id){
        $sql = "SELECT * FROM tbl_product WHERE product_id='$product_id'";
        $query_result = mysql_query($sql);
        return $query_result;
    }

    
    //Shiipng Details
        public function select_all_order(){
            $sql = "SELECT * FROM tbl_shipping";
            $query_result = mysql_query($sql);
            return $query_result; 
    }
        public function published_order($id){
            $sql = "UPDATE tbl_shipping SET publication_status='1'WHERE shipping_id='$id'";
            mysql_query($sql);
            header('Location:manage_order.php');

        }
     public function unpublished_order($id){
       $sql = "UPDATE tbl_shipping SET publication_status='0'WHERE shipping_id='$id'";
        mysql_query($sql);
       header('Location:manage_order.php');
    }
    public function delete_order($id){
        $sql = "DELETE FROM tbl_shipping WHERE shipping_id='$id'";
         mysql_query($sql);
       header('Location:manage_order.php');

    }

    //Order Details

     public function select_all_cart_order(){
            $sql = "SELECT * FROM tbl_cart_temp";
            $query_result = mysql_query($sql);
            return $query_result; 
    }
    public function published_cart_order($id){
            $sql = "UPDATE tbl_cart_temp SET publication_status='1' WHERE cart_id='$id'";
            mysql_query($sql);
            header('Location:manage_cart_order.php');

    }
    public function unpublished_cart_order($id){
       $sql = "UPDATE tbl_cart_temp SET publication_status='0' WHERE cart_id='$id'";
        mysql_query($sql);
        header('Location:manage_cart_order.php');
    }
    public function delete_cart_order($id){
         $sql = "DELETE FROM tbl_cart_temp WHERE cart_id='$id'";
         mysql_query($sql);
         header('Location:manage_cart_order.php');

    }


    // Customer Details

        public function select_all_customer(){
            $sql = "SELECT * FROM tbl_customer";
            $query_result = mysql_query($sql);
            return $query_result; 
        }
        public function published_customer($id){
            $sql = "UPDATE tbl_customer SET publication_status='1'WHERE customer_id='$id'";
            mysql_query($sql);
            header('Location:manage_customer.php');

        }
        public function unpublished_customer($id){
           $sql = "UPDATE tbl_customer SET publication_status='0'WHERE customer_id='$id'";
           mysql_query($sql);
           header('Location:manage_customer.php');
       }
    public function delete_customer($id){
             $sql = "DELETE FROM tbl_customer WHERE customer_id='$id'";
             mysql_query($sql);
             header('Location:manage_customer.php');

    }
    
    
}

?>


