<?php
    require_once 'database.php';
    
     class Product{
     	public function __construct(){
            $obj = new Database();
     	}
        public function select_published_catagory(){
            $sql = "SELECT * FROM tbl_catagory WHERE publication_status='1'";
            $query_result =  mysql_query($sql);
            return $query_result;
        }
        public function select_published_manufacturer(){
            $sql = "SELECT * FROM tbl_manufacturer WHERE publication_status='1'";
            $query_result =  mysql_query($sql);
            return $query_result;
        }
     	
     	public function save_product_info($data,$files){
            
            if ($files["product_image"]["name"]) {
            	$target_dir = "product_images/";
            	$target_file = $target_dir.basename($files["product_image"]["name"]);
            	$uploadOk = 1;
            	$imageFileType=pathinfo($target_file,PATHINFO_EXTENSION);
            	$check = getimagesize($files["product_image"]["tmp_name"]);
            	
            	
            	
            	if ($check!==false) {
            		if ($files["product_image"]["size"] < 500000) {
            			
            			if ($imageFileType!="jpg" && $imageFileType!="png" 
            				&& $imageFileType!="jpeg" && $imageFileType!="gif") {
            				$message = "Not supported";
            			    return $message;
            			}
            			else{
            				if (move_uploaded_file($files["product_image"]["tmp_name"],$target_file)) {
            					$product_image = $target_file;
            					$sql = "INSERT INTO tbl_product(catagory_id,manufacturer_id,product_name,product_price,product_quantity,product_sku,product_short_description,product_long_description,product_image,publication_status)VALUES('$data[catagory_id]','$data[manufacturer_id]','$data[product_name]','$data[product_price]','$data[product_quantity]','$data[product_sku]','$data[product_short_description]','$data[product_long_description]','$product_image','$data[publication_status]') ";
            					if (!mysql_query($sql)) {
            						$message = 'SQL Error'.mysql_error();
            						return $message;
            					}
            					else{
            						$message = "Product Info Saved Successfully";
            						return $message;
            					}
                            }
            				else{
            					$message = "Sorry not uploaded";
            					return $message;
            				}
            			}
            		}
            		else{
            			$message = "File Too Large";
            			return $message;
            	}
            }
            	else{
            		$message = "File not an image";
                    return $message;
             	}
            }
            else{
            	$message = "image not selected";
            	return $message;
            }

     	}
        public function select_all_published_product(){

            $sql = "SELECT * FROM tbl_product WHERE publication_status='1'";
            $query_result =  mysql_query($sql);
            return $query_result;
            
        }

        public function select_product_by_search($data){

            $sql = "SELECT * FROM tbl_product WHERE product_name = '$data'";
            $query_result =  mysql_query($sql);
            return $query_result;
            
        }

        public function select_all_published_product_by_catagory_id($catagory_id){
            $sql = "SELECT * FROM tbl_product WHERE publication_status='1' AND catagory_id='$catagory_id'";
            $query_result =  mysql_query($sql);
            return $query_result;

        }
        public function select_all_published_product_by_manufacturer_id($manufacturer_id){
             $sql = "SELECT * FROM tbl_product WHERE publication_status='1' AND manufacturer_id='$manufacturer_id'";
            $query_result =  mysql_query($sql);
            return $query_result;
        }
        public function select_product_by_id($product_id){
            $sql = "SELECT * FROM tbl_product WHERE product_id='$product_id'";
            $query_result = mysql_query($sql);
            return $query_result;
        }
       
        


   }


