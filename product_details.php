<?php
	require 'header.php';
    $pid = $_GET['id'];
    $link = mysqli_connect('localhost','root','');
    mysqli_select_db($link,'ecommerce');
    
     
   if(isset($_POST['add_to_cart']) ) {
		// Add 5 item with ID #1002
		
		$cart->add($pid, $_POST['sales_quantity']);
		$cart_msg = true;
		$product_id = $_POST['product_id'];
      	// echo $product_id;
      	$sql = "SELECT * FROM tbl_product WHERE product_id = '$product_id'";
      	$result = mysql_query($sql);
        $product_info = mysql_fetch_assoc($result);
        $session_id = session_id();
        $product_sales_quantity = $_POST['sales_quantity'];
        // echo '<pre>';
        // print_r($product_info);
         $sql = "INSERT INTO tbl_cart_temp(session_id,product_image,product_id,product_name,	product_price,product_sales_quantity) VALUES ('$session_id','$product_info[product_image]','$_POST[product_id]','$product_info[product_name]','$product_info[product_price]', '$product_sales_quantity')";
        mysql_query($sql);
       
       //check here
           	echo '<script> location.replace("product_details.php?id='.$pid.'"); </script>';
        
       		
     
   }

 
   
  

?>
			
			<section class="breadcrumbs">
				<div class="container">
					<ul class="horizontal_list clearfix bc_list f_size_medium">
						<li class="m_right_10 current"><a href="#" class="default_t_color">Home<i class="fa fa-angle-right d_inline_middle m_left_10"></i></a></li>
						<li class="m_right_10"><a href="#" class="default_t_color">Product Details</a><i class="fa fa-angle-right d_inline_middle m_left_10"></i></li>
						
					</ul>
				</div>
			</section>
			
			
                       <?php
                           $res = mysqli_query($link,"select * from tbl_product where product_id = '$pid'");
                           while ($row = mysqli_fetch_assoc($res)) {
                           
                           ?>




			<div class="page_content_offset">
				<div class="container">
					<div class="row clearfix">
						<div class="col-md-12">
						<?php 
							if(isset($cart_msg) && $cart_msg) {


								echo "<div class='alert alert-success alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>Product added to your cart!</div>";
							}
						?>
						</div>
						<!--left content column-->
							
						
						<section class="col-lg-9 col-md-9 col-sm-9 m_xs_bottom_30">
							<div class="clearfix m_bottom_30 t_xs_align_c">
						<div class="photoframe type_2 shadow r_corners f_left f_sm_none d_xs_inline_b product_single_preview relative m_right_30 m_bottom_5 m_sm_bottom_20 m_xs_right_0 w_mxs_full">
							<span class="hot_stripe"><img src=""alt=""></span>
							<div class="relative d_inline_b m_bottom_10 qv_preview d_xs_block">
								<img id="zoom_image" src="admin/<?php echo $row['product_image']?>" data-zoom-image="admin/<?php echo $row['product_image']?>"" class="tr_all_hover" alt="">
								
							</div>
							<!--carousel-->
							<div class="relative qv_carousel_wrap">
							
							</div>
						</div>

						
                        <div class="p_top_10 t_xs_align_l">
							<!--description-->
							<h2 class="color_dark fw_medium m_bottom_10"><?php echo $row['product_name']; ?></h2>
							<div class="m_bottom_10">
								
								<a href="#" class="d_inline_middle default_t_color f_size_small m_left_5">3 Review(s) </a>
							</div>
							<hr class="m_bottom_10 divider_type_3">
							<table class="description_table m_bottom_10">
								<tr>
									<td>Product SKU:</td>
									<td><a href="#" class="color_dark"><?php echo $row['product_sku']; ?></a></td>
								</tr>
								<tr>
									<td>Product ID: </td>
									<td><?php echo $row['product_id']; ?></td>
								</tr>
								<tr>
									<td>Product Price: </td>
									<td><span class="color_green"><?php echo $row['product_price']; ?></td>
								</tr>
								
							</table>
							<h5 class="fw_medium m_bottom_10">Product Dimensions and Weight</h5>
							<table class="description_table m_bottom_5">
								<tr>
									<td>Product Length:</td>
									<td><span class="color_dark">10.0000M</span></td>
								</tr>
								<tr>
									<td>Product Weight:</td>
									<td>10.0000KG</td>
								</tr>
							</table>
							<hr class="divider_type_3 m_bottom_10">
							<p class="m_bottom_10">Features : Backlight Effects (20 Preset + 10 Customizable). 1ms response time. Cherry MX Mechanical Switches. Ultra-Compact Tenkeyless</p>
							<hr class="divider_type_3 m_bottom_15">
							
							<form method="post" action="">
							
							   <table class="description_table type_2 m_bottom_15">
								
								<tr>
									<td class="v_align_m">Quantity:</td>
									<td class="v_align_m">
										<div class="clearfix quantity r_corners d_inline_middle f_size_medium color_dark">
											<!-- <button class="bg_tr d_block f_left" data-direction="down">-</button> -->
											<input type="text" name="sales_quantity"  class="f_left" value="1">
											<input type="hidden" name="product_id" readonly value="<?php echo $row['product_id'];?>" class="f_left">
											<!-- <button class="bg_tr d_block f_left" data-direction="up">+</button> -->
										</div>
									</td>
								</tr>
							   </table>
                             
							<div class="d_ib_offset_0 m_bottom_20">
							
							    <button type="submit" name="add_to_cart" class="button_type_12 r_corners bg_scheme_color color_light tr_delay_hover d_inline_b f_size_large">Add to Cart</button>
								<button class="button_type_12 bg_light_color_2 tr_delay_hover d_inline_b r_corners color_dark m_left_5 p_hr_0"><span class="tooltip tr_all_hover r_corners color_dark f_size_small">Wishlist</span><i class="fa fa-heart-o f_size_big"></i></button>
								<button class="button_type_12 bg_light_color_2 tr_delay_hover d_inline_b r_corners color_dark m_left_5 p_hr_0"><span class="tooltip tr_all_hover r_corners color_dark f_size_small">Compare</span><i class="fa fa-files-o f_size_big"></i></button>
								
							</div>
						</form>
							
							<div class="d_inline_middle m_left_5 addthis_widget_container">
								<!-- AddThis Button BEGIN -->
								<div class="addthis_toolbox addthis_default_style addthis_32x32_style">
								<a class="addthis_button_preferred_1"></a>
								<a class="addthis_button_preferred_2"></a>
								<a class="addthis_button_preferred_3"></a>
								<a class="addthis_button_preferred_4"></a>
								<a class="addthis_button_compact"></a>
								<a class="addthis_counter addthis_bubble_style"></a>
								</div>
								<!-- AddThis Button END -->
							</div>
						</div>
					</div>
					<!--tabs-->
					<div class="tabs m_bottom_45">
						<!--tabs navigation-->
						<nav>
							<ul class="tabs_nav horizontal_list clearfix">
								<li class="f_xs_none" ><a href="#tab-1" class="bg_light_color_1 color_dark tr_delay_hover r_corners d_block">Description</a></li>
							
							</ul>
						</nav>
						<section class="tabs_content shadow r_corners">
							<div id="tab-1">
								<p class="m_bottom_10">Cougar PURI TKL Cherry MX Mechanical Gaming Keyboard is the Gamer’s Ultimate Weapon. This stylish keyboard is comes with Cherry switches, a 1ms response time and customizable backlight as well as a Protective magnetic cover. The COUGAR PURI TKL is a highly portable advanced tool for gamers that excels at FPS competitive gaming. Im the market, the original mechanical switches from Germany are also the best. It comes with 50 million activations per switch of guaranteed flawless performance and these Cherry switches bring you the response and reliability you want. This exclusive Keyboard magnetically attached cover will Protect it from water spills, bread crumbs or pressure when travelling. In this keyboard, the 3-Step Height and Angle Adjustment gives, the ability to choose one of three different heights/angles for the keyboard helps you optimize your performance. By NRKO Technology, You can provides Simultaneous and Accurate Multi-Key Commands. This keyboard's Multimedia and Function Key Shortcuts convenience, several handy function shortcuts have been predefined and also Save time and focus on the game. This PURI TKL’s backlight functionality gives you all you need. And you can start enjoying twenty preset modes that cover the most commonly needed patterns (uniform, wave, breathing, etc.) and ten modes for you to customize. This MX Mechanical Keyboard is Detachable Cable for Enhanced Portability. This convenient feature allows you to remove the cable when travelling with your keyboard and also protecting both the keyboard and the cable and improving its portability.... 01 year warranty </p>
								<p class="m_bottom_15">In this keyboard, the 3-Step Height and Angle Adjustment gives, the ability to choose one of three different heights/angles for the keyboard helps you optimize your performance. By NRKO Technology, You can provides Simultaneous and Accurate Multi-Key Commands. This keyboard's Multimedia and Function Key Shortcuts convenience, several handy function shortcuts have been predefined and also Save time and focus on the game. This PURI TKL’s backlight functionality gives you all you need. And you can start enjoying twenty preset modes that cover the most commonly needed patterns (uniform, wave, breathing, etc.) and ten modes for you to customize. This MX Mechanical Keyboard is Detachable Cable for Enhanced Portability. This convenient feature allows you to remove the cable when travelling with your keyboard and also protecting both the keyboard and the cable and improving its portability. </p>
								
								
							</div>
				
							<div id="tab-3">
								<div class="row clearfix">
									<div class="col-lg-8 col-md-8 col-sm-8">
										<h5 class="fw_medium m_bottom_15">Reviews</h5>
										<!--review-->
										<article>
											<div class="clearfix m_bottom_10">
												<p class="f_size_medium f_left f_mxs_none m_mxs_bottom_5">By John Smith - Thursday, 26 December 2013</p>
												
											</div>
											<p class="m_bottom_15">If you have the need for speed, then the Huntsman Elite is your best bet, thanks to its new optomechanical switches. That sounds like a mouthful, but essentially, it means that Razer has managed to combine mechanical switches with optical sensors. </p>
										</article>
										<hr class="m_bottom_15">
										<!--review-->
										<article>
											<div class="clearfix m_bottom_10">
												<p class="f_size_medium f_left f_mxs_none m_mxs_bottom_5">By Admin - Thursday, 26 December 2013</p>
												<!--rating-->
												
											</div>
											<p class="m_bottom_15">Trust us on this: investing in the best mechanical keyboard 2019 has on offer might just be the wisest one you’ll ever make on computer peripherals. We’re not strictly talking about gaming keyboards here, but if you mostly use your computer for gaming, then a mechanical keyboard is definitely the only way to go.</p>
										</article>
										<hr class="m_bottom_15">
										<!--review-->
										<article>
											<div class="clearfix m_bottom_10">
												<p class="f_size_medium f_left f_mxs_none m_mxs_bottom_5">By Alan Doe - Thursday, 26 December 2013</p>
												<!--rating-->
												
											</div>
											<p class="m_bottom_15">One of the biggest issues with Cherry MX Red keys is that even though they’re good for gaming, they’re not really ideal for typing anything other than your Steam credentials. That’s exactly why the Logitech G513 and its Romer-G Linear switches steal the show. With its brushed metal finish that is, miraculously, practically immune to fingerprints, it all adds up to one of the best gaming keyboards to date.</p>
										</article>
									</div>
							
								</div>
							</div>
						
						</section>
					</div>
			
							<hr class="divider_type_3 m_bottom_15">
							<a href="index.php" role="button" class="d_inline_b bg_light_color_2 color_dark tr_all_hover button_type_4 r_corners"><i class="fa fa-reply m_left_5 m_right_10 f_size_large"></i>Back to Shopping</a>
						</section>
						 

                    <?php } ?>

						
					</div>
				</div>
			</div>
<?php
   include 'footer.php';

?>