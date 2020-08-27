 <?php
      session_start();
      require_once './classes/product.php';
      require_once 'classes/class.Cart.php';
      $obj_product = new Product();
      $query_result=$obj_product->select_published_catagory();
      $result=$obj_product->select_published_manufacturer();
      $catagory_id='';
      $manufacturer_id='';
    
      if (isset($_GET['option'])) {      	
      	
      	
      	if ($_GET['option']=='catagory') {
      		$catagory_id=$_GET['catagory_id'];
      		$product_result=$obj_product->select_all_published_product_by_catagory_id($catagory_id);
      	}

      	else if($_GET['option']=='manufacturer'){
            $manufacturer_id = $_GET['manufacturer_id'];
            $product_result=$obj_product->select_all_published_product_by_manufacturer_id($manufacturer_id);
      	}
      }
      else{
      	 $product_result=$obj_product->select_all_published_product();
      }


    $link = mysqli_connect('localhost','root','');
	mysqli_select_db($link,'ecommerce');
    // Initialize Cart object
	$cart = new Cart([
	  // Can add unlimited number of item to cart
	  'cartMaxItem'      => 0,
	  
	  // Set maximum quantity allowed per item to 50000
	  'itemMaxQuantity'  => 50000,
	  
	  // Do not use cookie, cart data will lost when browser is closed
	  'useCookie'        => false,
	]);
	// Get all items in the cart
	$allItems = $cart->getItems();
	$total_qty = 0;
	$total_price = 0;
	foreach ($allItems as $pid => $items) {
		$quantity = $items[0]['quantity'];
		$res = mysqli_query($link,"select * from tbl_product where product_id = '$pid'");
	 	while ($row = mysqli_fetch_assoc($res)) {
		 	$product_price = $row['product_price']*$quantity;
		 	$total_price += $product_price;
	 	}
	 	$total_qty += $quantity;
	}
?> 



<!doctype html>

<html lang="en">
	
<head>
		<title>Online Gamming Store</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<!--meta info-->
		<meta name="author" content="">
		<meta name="keywords" content="">
		<meta name="description" content="">
		<link rel="icon" type="asset/frontend/image/ico" href="asset/frontend/images/xxx.ico">
		<!--stylesheet include-->
		<link rel="stylesheet" type="text/css" media="all" href="asset/frontend/css/flexslider.css">
		<link rel="stylesheet" type="text/css" media="all" href="asset/frontend/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" media="all" href="asset/frontend/css/owl.carousel.css">
		<link rel="stylesheet" type="text/css" media="all" href="asset/frontend/css/owl.transitions.css">
		<link rel="stylesheet" type="text/css" media="all" href="asset/frontend/css/jquery.custom-scrollbar.css">
		<link rel="stylesheet" type="text/css" media="all" href="asset/frontend/css/style.css">
		<!--font include-->
		<link href="asset/frontend/css/font-awesome.min.css" rel="stylesheet">
		<script src="asset/frontend/js/modernizr.js"></script>
	
	</head>
	<body>
		<!--boxed layout-->
		<div class="wide_layout relative w_xs_auto">
			
			<header role="banner">
				<!--header top part-->
				<section class="h_top_part">
					<div class="container">
						<div class="row clearfix">
							
						
							<div class="col-lg-4 col-md-4 col-sm-3 t_align_r t_xs_align_c">
								<ul class="horizontal_list clearfix d_inline_b t_align_l f_size_small site_settings type_2">
									<li class="container3d relative">
										<a role="button" href="#" class="color_dark" id="lang_button"><img class="d_inline_middle m_right_10" src="asset/frontend/images/flag_en.jpg" alt="">English</a>
										
									</li>
									<li id="cart_plat" class="m_left_20 relative container3d">
										<a role="button" href="#" class="color_dark" id="currency_button"><span class="scheme_color">৳</span> BDT</a>
										
									</li>
								</ul>
							</div>
						</div>
					</div>
				</section>
				<!--header bottom part-->
				<section class="h_bot_part container">
					<div class="clearfix row">
						<div class="col-lg-6 col-md-6 col-sm-4 t_xs_align_c">
							<a href="index.php" class="logo m_xs_bottom_15 d_xs_inline_b">
								<img src="asset/frontend/images/logo.png" alt="">
							</a>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-8">
							<div class="row clearfix">
								<div class="col-lg-6 col-md-6 col-sm-6 t_align_r t_xs_align_c m_xs_bottom_15">
									<dl class="l_height_medium">
										<dt class="f_size_small">Call us for free:</dt>
										<dd class="f_size_ex_large color_dark"><b>+8801773754462</b></dd>
									</dl>
								</div>
							<div class="col-lg-6 col-md-6 col-sm-6">


									<form class="relative type_2" role="search" method="POST" action="search.php">
										<input type="text" placeholder="Search" name="search" class="r_corners f_size_medium full_width">
										<button class="f_right search_button tr_all_hover f_xs_none">
											<i class="fa fa-search"></i>
										</button>
									</form>
								</div>


							</div>
						</div>
					</div>
				</section>
				<!--main menu container-->
				<div class="container">
					<section class="menu_wrap type_2 relative clearfix t_xs_align_c m_bottom_20" style="width: 1126px; background: #1f3e0cad; ">
						<!--button for responsive menu-->
						<button id="menu_button" class="r_corners centered_db d_none tr_all_hover d_xs_block m_bottom_15">
							<span class="centered_db r_corners"></span>
							<span class="centered_db r_corners"></span>
							<span class="centered_db r_corners"></span>
						</button>
						<!--main menu-->
						<nav role="navigation" class="f_left f_xs_none d_xs_none t_xs_align_l">	
							<ul class="horizontal_list main_menu clearfix">
								<li class="relative f_xs_none m_xs_bottom_5"><a href="index.php" class="tr_delay_hover color_light tt_uppercase"><b>Home</b></a>
						        </li>
								<li class="relative f_xs_none m_xs_bottom_5"><a href="gallary.php" class="tr_delay_hover color_light tt_uppercase"><b>Gallary</b></a>
									<!--sub menu-->
									
								</li>
								
								<li class="relative f_xs_none m_xs_bottom_5"><a href="manufacturer.php" class="tr_delay_hover color_light tt_uppercase"><b>Manufacturer</b></a>
									
									
								</li>
								
								<li class="relative f_xs_none m_xs_bottom_5"><a href="blog.php" class="tr_delay_hover color_light tt_uppercase"><b>Blog</b></a>
									
								<li class="relative f_xs_none m_xs_bottom_5"><a href="mod.php" class="tr_delay_hover color_light tt_uppercase"><b>Mods</b></a>
				                </li>
								<li class="relative f_xs_none m_xs_bottom_5"><a href="contact.php" class="tr_delay_hover color_light tt_uppercase"><b>Contact</b></a></li>
							</ul>
						</nav>
						<ul class="f_right horizontal_list clearfix t_align_l t_xs_align_c site_settings d_xs_inline_b f_xs_none">
							<!--like-->
							<li class="d_sm_none d_xs_block">
								<a role="button" href="#" class="button_type_1 color_dark d_block bg_light_color_1 r_corners tr_delay_hover box_s_none"><i class="fa fa-heart-o f_size_ex_large"></i></a>
							</li>
							<li class="m_left_5 d_sm_none d_xs_block">
								<a role="button" href="#" class="button_type_1 color_dark d_block bg_light_color_1 r_corners tr_delay_hover box_s_none"><i class="fa fa-files-o f_size_ex_large"></i></a>
							</li>
							<!--shopping cart-->
							<li class="m_left_5 relative container3d" id="shopping_button">
								<?php


								?>
								<a role="button" href="cart.php" class="button_type_3 color_light bg_scheme_color d_block r_corners tr_delay_hover box_s_none">
									<span class="d_inline_middle shop_icon">
										<i class="fa fa-shopping-cart"></i>
										<span class="count tr_delay_hover type_2 circle t_align_c"><?php echo $total_qty; ?></span>
									</span>
									<b>৳<?php echo $total_price; ?></b>
								</a>
							
							</li>
						</ul>
					</section>
				</div>
			</header>
	<!--<script type="text/javascript">
   	   $('document').ready(function(){
   	   	$('.search').keyup(function(){
             var search = $(this).val();
             $.post($('form').attr('action'),
             {'search':search},
             function(data){
               $('.success').html(data);
             }
             	)
   	   	})

   	   })
    </script>-->