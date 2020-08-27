<?php
ob_start();
		include 'header.php';
		if(isset($_POST['qty_update'])) {
			$cart->update($_POST['id'], $_POST['qty']);
echo '<script> location.replace("cart.php"); </script>';
}

if(isset($_GET['remove'])) {
		$cart->remove($_GET['id']);
		header('Location: cart.php');
		echo '<script> location.replace("cart.php"); </script>';
}

//remove and refress all
if(isset($_GET['removeAll'])){
	$cart->clear();
	echo '<script> location.replace("order_successful.php"); </script>';
}


?>
<?php 
if (isset($_POST['sign_up'])) {
    	// echo "<pre/>";
    	// print_r($_POST);
    	// exit();
    	$sql = "INSERT INTO tbl_customer(first_name,last_name,email,password,con_pass,address,mobile,city,country,zip_code)VALUES('$_POST[first_name]','$_POST[last_name]','$_POST[email]','$_POST[password]','$_POST[con_pass]','$_POST[address]','$_POST[mobile]','$_POST[city]','$_POST[country]','$_POST[zip_code]')";

    	if (mysql_query($sql)) {
    		$customer_id = mysql_insert_id();
    		$_SESSION['customer_name']=$_POST['first_name'].''.$_POST['last_name'];
    		$_SESSION['customer_id']=$customer_id;
    		header("Location: login.php");
    	}else{
    		die("Query Problem".mysql_error());
    	}
    }

 ob_end_flush(); 
 ?>



<section class="breadcrumbs">
	<div class="container">
		<ul class="horizontal_list clearfix bc_list f_size_medium">
			<li class="m_right_10 current"><a href="index" class="default_t_color">Home<i class="fa fa-angle-right d_inline_middle m_left_10"></i></a></li>
			
			<li><a href="cart.php" class="default_t_color">Shopping Cart</a></li>
		</ul>
	</div>
</section>
<!--content-->
<div class="page_content_offset">
	<div class="container">
		<div class="row clearfix">
			<!--left content column-->
			<section class="col-lg-9 col-md-9 col-sm-9 m_xs_bottom_30">
				<h2 class="tt_uppercase color_dark m_bottom_25">Cart</h2>
				<!--cart table-->
				<table class="table_type_4 responsive_table full_width r_corners wraper shadow t_align_l t_xs_align_c m_bottom_30">
					<thead>
						<tr class="f_size_large">
							<!--titles for td-->
							<th>Product Image &amp; Name</th>
							<th>SKU</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Subtotal</th>
						</tr>
					</thead>
					<tbody>
						<?php
						  if (isset($_SESSION['cart'])) {
						  	unset($_SESSION['cart']);
						  }
					     
						// Get all items in the cart
						$allItems = $cart->getItems();
						$subtotal = 0;
						$i=0;
						foreach ($allItems as $pid => $items):
							$quantity = $items[0]['quantity'];
							$res = mysqli_query($link,"select * from tbl_product where product_id = '$pid'");
						
						while ($row = mysqli_fetch_assoc($res)) {
						$product_price = $row['product_price']*$quantity;
						$subtotal += $product_price;

		                    $_SESSION['cart'][$i]=array(''.$row['product_id'].'',''.$quantity.'');
		                    $i++;
		                       
						?>
						<tr>
							<!--Product name and image-->
							<td data-title="Product Image &amp; name" class="t_md_align_c">
								<img src="admin/<?php echo $row['product_image']?>" alt="" class="m_md_bottom_5 d_xs_block d_xs_centered" style="width: 130px;height: auto;">
								<a href="#" class="d_inline_b m_left_5 color_dark"><?php echo $row['product_name']; ?></a>
							</td>
							<!--product key-->
							<td data-title="SKU"><?php echo $row['product_sku']; ?></td>
							<!--product price-->
							<td data-title="Price">
								<p class="f_size_large color_dark">৳<?php echo $row['product_price']; ?></p>
							</td>
							<!--quanity-->
							<td data-title="Quantity">
								<form action="cart.php" method="post">
									<input type="hidden" name="qty_update" value="1">
									<input type="hidden" name="id" value="<?php echo $pid; ?>">
									<div class="clearfix quantity r_corners d_inline_middle f_size_medium color_dark m_bottom_10">
									
										<input type="text" name="qty" value="<?php echo $quantity; ?>" class="f_left" >
										
									</div>
									<div>
										<button type="submit" class="color_dark"><i class="fa fa-check f_size_medium m_right_5"></i>Update</button><br>
										<a href="cart.php?remove=1&id=<?php echo $pid; ?>" class="color_dark"><i class="fa fa-times f_size_medium m_right_5"></i>Remove</a><br>
									</div>
								</form>
								
							</td>
							<!--subtotal-->
							<td data-title="Subtotal">
								<p class="f_size_large fw_medium scheme_color">৳<?php echo $product_price; ?></p>
							</td>
						</tr>

						
						<?php } endforeach; ?>
						
						<!--prices-->
						<tr>
							<td colspan="4">
								<p class="fw_medium f_size_large t_align_r t_xs_align_c">Subtotal:</p>
							</td>
							<td colspan="1">
								<p class="fw_medium f_size_large color_dark">৳<?php echo $subtotal; ?></p>
							</td>
						</tr>
						<!--total-->
						<tr>
							<td colspan="4" class="v_align_m d_ib_offset_large t_xs_align_l">
								<!--coupon-->
								
								<p class="fw_medium f_size_large t_align_r scheme_color p_xs_hr_0 d_inline_middle half_column d_ib_offset_normal d_xs_block w_xs_full t_xs_align_c">Total:</p>
							</td>
							<td colspan="1" class="v_align_m">
								<p class="fw_medium f_size_large scheme_color m_xs_bottom_10">৳<?php echo $subtotal; ?></p>
							</td>
						</tr>
					</tbody>
				</table>
              
             

             
             <?php 
                 
                $_SESSION['ivalue']=$i; 

             ?>
             
             <?php if (isset($_SESSION["login_check"]) !=1) { ?>
				<!--tabs-->
				<div class="tabs m_bottom_45">
					<!--tabs navigation-->
					<nav>
						<ul class="tabs_nav horizontal_list clearfix">
							<li><a href="login.php" class="bg_light_color_1 color_dark tr_delay_hover r_corners d_block">Login</a></li>
							<li><a href="cart.php" class="bg_light_color_1 color_dark tr_delay_hover r_corners d_block">Register</a></li>
						</ul>
					</nav>
		
			    </div>

			  <?php } else{ ?>

			  	<!--tabs-->
				<div class="tabs m_bottom_45">
					<!--tabs navigation-->
					<nav>
						<ul class="tabs_nav horizontal_list clearfix">
							<li><a href="shipping_page.php" class="bg_light_color_1 color_dark tr_delay_hover r_corners d_block">Add Shipping Address</a></li>
						</ul>
					</nav>
		
			    </div>
 
		    <?php }  ?>
		 <?php if (isset($_SESSION["login_check"]) !=1) { ?>
		
			<div class="bs_inner_offsets bg_light_color_3 shadow r_corners m_bottom_45">
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 m_xs_bottom_30">
						
						<form method="POST" action="">
							<ul>
								

							<li class="m_bottom_15">
								<label for="f_name_1" class="d_inline_b m_bottom_5 required">First Name</label>
								<input type="text" id="f_name_1" name="first_name" class="r_corners full_width" required>
							</li>
							
							<li class="m_bottom_15">
								<label for="l_name_1" class="d_inline_b m_bottom_5 required">Last Name</label>
								<input type="text" id="l_name_1" name="last_name" class="r_corners full_width" required>
							</li>
								<li class="m_bottom_15">
								<label for="l_name_1" class="d_inline_b m_bottom_5 required">Email Address</label>
								<input type="email" id="l_name_1" name="email" class="r_corners full_width" required>
							</li>
								<li class="m_bottom_15">
								<label for="l_name_1" class="d_inline_b m_bottom_5 required">Password </label>
								<input type="password" id="l_name_1" name="password" class="r_corners full_width" required>
							</li>
						    </li>
								<li class="m_bottom_15">
								<label for="l_name_1" class="d_inline_b m_bottom_5 required">Confirm Password </label>
								<input type="password" id="l_name_1" name="con_pass" class="r_corners full_width" required>
							</li>
							<li class="m_bottom_15">
								<label for="address_1" class="d_inline_b m_bottom_5 required">Address</label>
								<input type="text" id="address_1" name="address" class="r_corners full_width" required>
							</li>
								<li class="m_bottom_15">
									<label for="m_phone_1" class="d_inline_b m_bottom_5">Mobile Phone</label>
									<input type="number" id="m_phone_1" name="mobile" class="r_corners full_width" required>
					            </li>

					         <li class="m_bottom_15">
								<label for="city_1" class="d_inline_b m_bottom_5 required">City</label>
								<input type="text" id="city_1" name="city" class="r_corners full_width" required>
							</li>
							        <li class="m_bottom_15">
								<label for="city_1" class="d_inline_b m_bottom_5 required">Country</label>
								<input type="text" id="city_1" name="country" class="r_corners full_width" required>
							</li>
							<li class="m_bottom_15">
								<label for="code_1" class="d_inline_b m_bottom_5 required">Zip / Postal Code</label>
								<input type="text" id="code_1" name="zip_code" class="r_corners full_width" required>
							</li>
				<li>
					<button type="submit" name="sign_up" class="button_type_4 r_corners bg_scheme_color color_light tr_all_hover">Sign Up</button>
				</li>
				</ul>
			</form>

		</div>
	 
</div>

</div>

 <?php }  ?>
<a href="index.php" role="button" class="d_inline_b bg_light_color_2 color_dark tr_all_hover button_type_4 r_corners"><i class="fa fa-reply m_left_5 m_right_10 f_size_large"></i>Back to Shopping</a><br>


</section>
<!--right column-->

<aside class="col-lg-3 col-md-3 col-sm-3">
<!--widgets-->
<figure class="widget shadow r_corners wrapper m_bottom_30">
<figcaption>
<h3 class="color_light">Upcoming</h3>
</figcaption>

</figure>
<!--banner-->
<a href="#" class="d_block d_xs_inline_b r_corners m_bottom_30">
<img src="asset/frontend/images/banner_img_6.jpg" alt="">
</a>
<!--Popular articles-->
<figure class="widget shadow r_corners wrapper m_bottom_30">
<figcaption>
<h3 class="color_light">Supporting Team</h3>
</figcaption>
<div class="widget_content">
<div class="clearfix m_bottom_15">
	<img src="asset/frontend/images/bestsellers_img_3.jpg" alt="" class="f_left m_right_15 m_sm_bottom_10 f_sm_none f_xs_left m_xs_bottom_0">
	<a href="#" class="color_dark d_block bt_link"></a>
	
	<p class="scheme_color"></p>
</div>
<hr class="m_bottom_15">
<div class="clearfix m_bottom_15">
	<img src="asset/frontend/images/bestsellers_img_10.jpg" alt="" class="f_left m_right_15 m_sm_bottom_10 f_sm_none f_xs_left m_xs_bottom_0">
	<a href="#" class="color_dark d_block bt_link"></a>
	
	<p class="scheme_color"></p>
</div>
<hr class="m_bottom_15">
<div class="clearfix m_bottom_5">
	<img src="asset/frontend/images/bestsellers_img_9.jpg" alt="" class="f_left m_right_15 m_sm_bottom_10 f_sm_none f_xs_left m_xs_bottom_0">
	<a href="#" class="color_dark d_block bt_link"></a>
	
	<p class="scheme_color"></p>
</div>
</div>
</figure>
<!--Bestsellers-->
<figure class="widget shadow r_corners wrapper m_bottom_30">
<figcaption>
<h3 class="color_light">Core Partners</h3>
</figcaption>
<div class="widget_content">
<div class="clearfix m_bottom_15">
	<img src="asset/frontend/images/bestsellers_img_1.jpg" alt="" class="f_left m_right_15 m_sm_bottom_10 f_sm_none f_xs_left m_xs_bottom_0">
	
	
</div>
<hr class="m_bottom_15">
<div class="clearfix m_bottom_15">
	<img src="asset/frontend/images/bestsellers_img_2.jpg" alt="" class="f_left m_right_15 m_sm_bottom_10 f_sm_none f_xs_left m_xs_bottom_0">
	
</div>
<hr class="m_bottom_15">
<div class="clearfix m_bottom_5">
	<img src="asset/frontend/images/bestsellers_img_3.jpg" alt="" class="f_left m_right_15 m_sm_bottom_10 f_sm_none f_xs_left m_xs_bottom_0">
	
</div>
</div>
</figure>

</aside>
</div>
</div>
</div>


