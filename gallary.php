<?php
    require_once 'header.php';
    

?>
					

                  <section class="breadcrumbs">
				<div class="container">
					<ul class="horizontal_list clearfix bc_list f_size_medium">
						<li class="m_right_10 current"><a href="index.php" class="default_t_color">Home<i class="fa fa-angle-right d_inline_middle m_left_10"></i></a></li>
						<li><a href="gallary.php" class="default_t_color">Gallary</a></li>
					</ul>
				</div>
			</section>

                   

					<h2 class="tt_uppercase color_dark m_bottom_30" style="margin-top: 80px; text-align: center;"><b>Gallery</b></h2>
					
					<div class="row clearfix">
						<?php

			while($row=mysql_fetch_assoc($product_result)) {
			?>
						<div class="col-lg-4 col-md-4 col-sm-4 t_xs_align_c m_bottom_25" style="padding-left: 90px; margin-top: 40px;">
							<figure class="d_xs_inline_b d_exs_block">
								<div class="photoframe with_buttons relative shadow r_corners wrapper m_bottom_15">
									<img src="admin/<?php echo $row['product_image']?>" alt="" class="tr_all_long_hover">
									<div class="open_buttons clearfix">
										<div class="f_left f_size_large tr_all_hover"><a href="admin/<?php echo $row['product_image']?>"role="button" class="color_light button_type_13 r_corners box_s_none d_block jackbox" data-group="gallery_1" data-title="title 1"><i class="fa fa-camera"></i></a></div>
										
									</div>
								</div>
								<figcaption class="t_xs_align_l">
									<h4><a href="#" class="color_dark"><b><?php echo $row['product_name']?></b></a></h4>
								</figcaption>
							</figure>

						</div>
						<?php }?>
					
					
					</div>

					<?php

					require_once 'footer.php';

					?>