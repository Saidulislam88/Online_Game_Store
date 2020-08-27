<aside class="col-lg-3 col-md-3 col-sm-3 m_xs_bottom_30">
							<!--widgets-->
							<figure class="widget animate_ftr shadow r_corners wrapper m_bottom_30">
								<figcaption>
									<h3 class="color_light">Categories</h3>
								</figcaption>
								<div class="widget_content">
									<!--Categories list-->
									<ul class="categories_list">
										<?php 
                                            while ($row=mysql_fetch_assoc($query_result)) {
                                            	
                                           
										?>
										<li>
											<a href="?option=catagory&catagory_id=<?php echo $row['catagory_id']?>" class="f_size_large scheme_color d_block relative">
												<b><?php echo $row['catagory_name']?></b>
												<span class="bg_light_color_1 r_corners f_right color_dark talign_c"></span>
											</a>
											

										</li>
										<?php } ?>
									</ul>
								</div>
							</figure>
							<!--compare products-->
							<figure class="widget animate_ftr shadow r_corners wrapper m_bottom_30">
								<figcaption>
									<h3 class="color_light">Core Partners</h3>
								</figcaption>
								<div class="widget_content">
									<div class="clearfix m_bottom_15 relative cw_product">
										<img src="asset/frontend/images/bestsellers_img_2.jpg" alt="" class="f_left m_right_15 m_sm_bottom_10 f_sm_none f_xs_left m_xs_bottom_0">
										<a href="#" class="color_dark d_block bt_link"></a>
								
									</div>
									<hr class="m_bottom_15">
									<div class="clearfix m_bottom_25 relative cw_product">
										<img src="asset/frontend/images/bestsellers_img_1.jpg" alt="" class="f_left m_right_15 m_sm_bottom_10 f_sm_none f_xs_left m_xs_bottom_0">
										<a href="#" class="color_dark d_block bt_link"></a>
										
									</div>
									
								</div>
							</figure>
							<!--wishlist-->
							<figure class="widget animate_ftr shadow r_corners wrapper m_bottom_30">
								<figcaption>
									<h3 class="color_light">Upcoming</h3>
								</figcaption>
								
							</figure>
							<!--banner-->
							<a href="#" class="widget animate_ftr d_block r_corners m_bottom_30">
								<img src="asset/frontend/images/banner_img_6.jpg" alt="">
							</a>
							<!--Bestsellers-->
							<figure class="widget animate_ftr shadow r_corners wrapper m_bottom_30">
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
							<!--tags-->
							<figure class="widget animate_ftr shadow r_corners wrapper">
								<figcaption>
									<h3 class="color_light">Tags</h3>
								</figcaption>
								<div class="widget_content">
									<div class="tags_list">
										<a href="#" class="color_dark d_inline_b v_align_b">gaming,</a>
										<a href="#" class="color_dark d_inline_b f_size_ex_large v_align_b">accessories,</a>
										<a href="#" class="color_dark d_inline_b v_align_b">electronics,</a>
										<a href="#" class="color_dark d_inline_b f_size_big v_align_b">laptops,</a>
										<a href="#" class="color_dark d_inline_b v_align_b">xbox,</a>
										<a href="#" class="color_dark d_inline_b f_size_large v_align_b">gaming mouse,</a>
										<a href="#" class="color_dark d_inline_b v_align_b">gaming pads,</a>
										<a href="#" class="color_dark d_inline_b v_align_b">monitors,</a>
										<a href="#" class="color_dark d_inline_b v_align_b">desktops,</a>
										<a href="#" class="color_dark d_inline_b f_size_ex_large v_align_b">pendrive,</a>
										<a href="#" class="color_dark d_inline_b v_align_b">powerbank,</a>
										<a href="#" class="color_dark d_inline_b f_size_big v_align_b">speaker</a>
									</div>
								</div>
							</figure>
						</aside>
						