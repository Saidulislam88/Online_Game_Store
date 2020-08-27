<?php 
class Database{

       public function __construct(){
            $host_name = 'localhost';
            $user_name = 'root';
            $password = '';
            $database_name = 'ecommerce';
            $conn = mysql_connect($host_name,$user_name,$password);
            if ($conn) {
                
                mysql_select_db($database_name);
            
            }
            else{
            	die("Database Not Connected");
            }
       


    }
}




?>