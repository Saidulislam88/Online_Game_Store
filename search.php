<?php
require_once 'header.php';
require_once 'slider.php';
?>

<!-- Catagory -->
<div class="row clearfix">
	<?php
	require_once 'menu.php'
	
	?>
<?php //echo 

$data = $_POST['search'];
$search_result=$obj_product->select_product_by_search($data);

?>

	<section class="col-lg-9 col-md-9 col-sm-9">
		<h2 class="tt_uppercase color_dark m_bottom_10 heading5 animate_ftr">Search products</h2>
		      

		
		<!--products-->
		<section class="products_container a_type_2 category_grid clearfix m_bottom_25">
			<!--product item-->
			<?php
            if(!empty($search_result)) {
			while($row=mysql_fetch_assoc($search_result)) {
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

			<?php } }else{ 


              echo "<h2>OOps!! No products found, try again.</h2>";

			}?>

				

			
		</section>

	
		

		<?php
            //require_once 'new_araival.php';
        ?>
		
		
	</section>
</div>
</div>
</div>

<?php
    require_once 'footer.php';

?>
