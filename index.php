<?php
require_once 'header.php';
require_once 'slider.php';
?>

<!-- Catagory -->
<div class="row clearfix">
	<?php
	require_once 'menu.php'
	
	?>

	<section class="col-lg-9 col-md-9 col-sm-9">
		<h2 class="tt_uppercase color_dark m_bottom_10 heading5 animate_ftr">Featured products</h2>
		      

		
		<!--products-->
		<section class="products_container a_type_2 category_grid clearfix m_bottom_25">
			<!--product item-->
			<?php

			while($row=mysql_fetch_assoc($product_result)) {
			?>

			<div class="product_item hit w_xs_full">
				<figure class="r_corners photoframe animate_ftb type_2 t_align_c tr_all_hover shadow relative">
					<!--product preview-->
					<a href="#" class="d_block relative pp_wrap m_bottom_15">
						<!--hot product-->
						<span class="hot_stripe"><img src="#" alt=""></span>
						<img src="admin/<?php echo $row['product_image']?>" class="tr_all_hover" alt="">
						<a href="product_details.php?id=<?php echo $row["product_id"]; ?>" data-popup="product_details.php?id=<?php echo $row["product_id"]; ?>" class="button_type_5 box_s_none color_light r_corners tr_all_hover d_xs_none" style="line-height: 1.3rem;">Quick View</a>
					</a>
					<!--description and price of product-->
					<figcaption>
					<h5 class="m_bottom_10"><a href="" class="color_dark"><?php echo $row['product_name']?></a></h5>
					<!--rating-->
				<ul class="horizontal_list d_inline_b m_bottom_10 clearfix rating_list type_2 tr_all_hover">
						<li class="active">
							<i class="fa fa-star-o empty tr_all_hover"></i>
							<i class="fa fa-star active tr_all_hover"></i>
						</li>
						<li class="active">
							<i class="fa fa-star-o empty tr_all_hover"></i>
							<i class="fa fa-star active tr_all_hover"></i>
						</li>
						<li class="active">
							<i class="fa fa-star-o empty tr_all_hover"></i>
							<i class="fa fa-star active tr_all_hover"></i>
						</li>
						<li class="active">
							<i class="fa fa-star-o empty tr_all_hover"></i>
							<i class="fa fa-star active tr_all_hover"></i>
						</li>
						<li>
							<i class="fa fa-star-o empty tr_all_hover"></i>
							<i class="fa fa-star active tr_all_hover"></i>
						</li>
					</ul>
					<p class="scheme_color f_size_large m_bottom_15">৳ <?php echo $row['product_price']?></p>
					<a href="product_details.php?id=<?php echo $row["product_id"]; ?>" data-popup="product_details.php?id=<?php echo $row["product_id"]; ?>" class="button_type_4 bg_scheme_color r_corners tr_all_hover color_light mw_0 m_bottom_15" >Add to Cart</a>
					<!-- <button class="button_type_4 bg_scheme_color r_corners tr_all_hover color_light mw_0 m_bottom_15">Add to Cart</button> -->
					<!-- <div class="clearfix m_bottom_5">
						<ul class="horizontal_list d_inline_b l_width_divider">
							<li class="m_right_15 f_md_none m_md_right_0"><a href="#" class="color_dark">Add to Wishlist</a></li>
							<li class="f_md_none"><a href="#" class="color_dark">Add to Compare</a></li>
						</ul>
					</div> -->
					</figcaption>
				</figure>
			</div>

			<?php }?>

				

			
		</section>

	
		<!--banners-->
		<div class="row clearfix m_bottom_45">
			<div class="col-lg-6 col-md-6 col-sm-6">
				<a href="#" class="d_block animate_ftb h_md_auto m_xs_bottom_15 banner_type_2 r_corners red t_align_c tt_uppercase vc_child n_sm_vc_child">
					<span class="d_inline_middle">
						<img class="d_inline_middle m_md_bottom_5" src="asset/frontend/images/banner_img_3.png" alt="">
						<span class="d_inline_middle m_left_10 t_align_l d_md_block t_md_align_c">
							<b>100% Satisfaction</b><br><span class="color_dark">Guaranteed</span>
						</span>
					</span>
				</a>
				
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<a href="#" class="d_block animate_ftb h_md_auto m_xs_bottom_15 banner_type_2 r_corners green t_align_c tt_uppercase vc_child n_sm_vc_child">
					<span class="d_inline_middle">
						<img class="d_inline_middle m_md_bottom_5" src="asset/frontend/images/banner_img_4.png" alt="">
						<span class="d_inline_middle m_left_10 t_align_l d_md_block t_md_align_c">
							<b>Free<br class="d_none d_sm_block"> Shipping</b><br><span class="color_dark">On All Items</span>
						</span>
					</span>
				</a>
			</div>
		</div>
		

		<?php
            require_once 'new_araival.php';
        ?>
		
		
	</section>
</div>
</div>
</div>

<?php
    require_once 'footer.php';

?>
