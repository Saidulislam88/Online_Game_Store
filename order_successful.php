
<?php

    require_once 'header.php';

    if (isset($_SESSION['cart'])) {
    
    $number = mt_rand(100000, 999999);
    
    for($i=0;$i<$_SESSION['ivalue'];$i++){
		for($j=0;$j<1;$j++)
			{
				$res = mysqli_query($link,"select * from tbl_product where product_id = '".$_SESSION['cart'][$i][$j]."'");
						
						while ($row = mysqli_fetch_assoc($res)) {
						  $total_price = $row['product_price']*$_SESSION['cart'][$i][$j+1];
						  $shipping_id = $_SESSION['ping_id'];
						  $product_id = $_SESSION['cart'][$i][$j];
						  $product_name = $row['product_name'];
						  $product_price = $row['product_price'];
						  $quantity = $_SESSION['cart'][$i][$j+1];

						  $sql = "INSERT INTO listofcartitem(shipping_id,product_id,product_name,product_price,quantity,rvalue) VALUES ('$shipping_id','$product_id','$product_name','$product_price','$quantity','$number')";
                          mysql_query($sql);
						  
			}
		}


	}
	
   unset($_SESSION['ivalue']);
   unset($_SESSION["cart"]);   
   unset($_SESSION['ping_id']);

   echo "<script>location.replace('order_successful.php');</script>";


}


?>

<div class="container">
	<div class="row">
		<br><h3>Order placed successfull.Check your mail</h3><br>
		<a href="index.php" role="button" class="d_inline_b bg_light_color_2 color_dark tr_all_hover button_type_4 r_corners"><i class="fa fa-reply m_left_5 m_right_10 f_size_large"></i>Back to Shopping</a>
	</div>
<br>

	
</div>

<?php
   require_once 'footer.php';
?>