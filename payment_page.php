<?php
ob_start();
    require_once 'header.php';
?>
<?php
  if (isset($_POST['purchase'])) {
  	$payment_type = $_POST['payment_type'];
  	if ($payment_type=='cash_on_delivery') {
  		
  	
  	
  	$sql = "INSERT INTO tbl_payment (payment_type) VALUES ('$payment_type')";
  	mysql_query($sql);
  	$_SESSSION['payment_id'] = mysql_insert_id();
  

  $sql = "INSERT INTO tbl_order(customer_id,shipping_id,payment_id,order_total) VALUES ('$_POST[customer_id]','$_POST[shipping_id]','$_POST[payment_id]','$_POST[order_total]')";
  mysql_query($sql);

    $order_id = mysql_insert_id();
    $session_id = session_id();

    $sql = "SELECT * FROM tbl_cart_temp WHERE session_id = '$session_id'";
    $result = mysql_query($sql);

    while ($row = mysql_fetch_assoc($result)) {
    	$sql = "INSERT INTO tbl_order_details (order_id,product_id,product_name,product_price,product_sales_quantity) VALUES ('$order_id','$row[product_id]','$row[product_name]','$row[product_price]','$row[product_sales_quantity]')";
    	mysql_query($sql);
    }
     // $sql = "DELETE FROM tbl_cart_temp WHERE session_id = '$session_id'";
     // $result = mysql_query($sql);
    //removeall
     header('Location: cart.php?removeAll=1');
}

if ($payment_type=='paypal') {
	$sql = "INSERT INTO tbl_order(customer_id,shipping_id,payment_id,order_total) VALUES ('$_SESSION[customer_id]','$_SESSION[shipping_id]','$_SESSION[payment_id]','$_SESSION[order_total]')";
    mysql_query($sql);

    $order_id = mysql_insert_id();
    $session_id = session_id();

    $sql = "SELECT * FROM tbl_cart_temp WHERE session_id = '$session_id'";
    $result = mysql_query($sql);

    while ($row = mysql_fetch_assoc($result)) {
    	$sql = "INSERT INTO tbl_order_details (order_id,product_id,product_name,product_price,product_sales_quantity) VALUES ('$order_id','$row[product_id]','$row[product_name]','$row[product_price]','$row[product_sales_quantity]')";
    	mysql_query($sql);
    }
     // $sql = "DELETE FROM tbl_cart_temp WHERE session_id = '$session_id'";
     // $result = mysql_query($sql);
     header('Location: https://www.paypal.com/bd/home');
    
 }


}
ob_end_flush();
?>


					<div class="container">
						<div class="row">
		
							<form method="POST" action="">
								<h2 class="tt_uppercase color_dark m_bottom_30">
									Payment</h2>
							<div class="bs_inner_offsets bg_light_color_3 shadow r_corners m_bottom_45">
								<figure class="block_select clearfix relative m_bottom_15">
									<input type="radio" checked name="payment_type" class="d_none" value="cash_on_delivery">
									<img src="asset/frontend/images/payment_logo.jpg" alt="" class="f_left m_right_20 f_mxs_none m_mxs_bottom_10">
									<figcaption class="d_table d_sm_block">
										<div class="d_table_cell d_sm_block p_sm_right_0 p_right_45 m_mxs_bottom_5">
											<h5 class="color_dark fw_medium m_bottom_15 m_sm_bottom_5">Cash On Delivery</h5>
											
										</div>
										
									</figcaption>
								</figure>
								<hr class="m_bottom_20">
								<figure class="block_select clearfix relative">
									<input type="radio" name="payment_type" class="d_none" value="paypal">
									<img src="images/payment_logo.jpg" alt="" class="f_left m_right_20 f_mxs_none m_mxs_bottom_10">
									<figcaption>
										<h5 class="color_dark fw_medium m_bottom_15 m_sm_bottom_5">
										Paypal</h5>
										
									</figcaption>
								</figure>
							</div>
								<div class="bs_inner_offsets bg_light_color_3 shadow r_corners m_bottom_45">
								<p class="m_bottom_10">As our main concern is to provide a platform that fulfils the demand of gaming products with less cost and delivery time. User can view all products by specific brands as well as specific categories. User can choose multiple products at a same time. User can view product details. User can add to shopping cart and view cart details. User can set product quantity. User will get calculated total amount of purchase. </p>
								<p>Most of the existing websites belong from abroad. Ecommerce sites in our country that deals with gaming equipment they have all items not only gaming gears. The existing websites deals with many category products from gaming gears to home appliances. People who are interested in gaming get all the gaming accessories in one place. They don’t have to wait for shipping </p>
							</div>
								
						
					<table class="table_type_5 full_width r_corners wraper shadow t_align_l">
							<tr>
									<td colspan="2">
										<button type="submit" name="purchase" class="button_type_6 bg_scheme_color f_size_large r_corners tr_all_hover color_light m_bottom_20">Confirm Purchase</button>
									</td>
								</tr>
						</form>

					</table>
				</div>
				
			</div>



<?php
   require_once 'footer.php';
?>

