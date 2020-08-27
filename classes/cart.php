<?php
    require_once'database.php';
    class Cart{
         public_function __construct(){
              $obj_db = new Database();
         }
         public_function add_to_cart($data){
              echo "<pre>";
              print_r(add_to_cart);
         }
         public function save_customer_info($data){
               echo '<pre/>';
               print_r($data);
         exit();
    }
}
?>