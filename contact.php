<?php

require_once 'header.php';
 //  if(isset($_POST['submit'])){
	// 	$name=$_POST['name'];
	// 	$email=$_POST['email'];
	// 	$subject=$_POST['subject'];
	// 	$msg=$_POST['msg'];

	// 	$to='gazi@gmail.com'; // Receiver Email ID, Replace with your email ID
	// 	$subject='Form Submission';
	// 	$message="Name :".$name."\n"."subject :".$subject."\n"."Wrote the following :"."\n\n".$msg;
	// 	$headers="From: ".$email;

	// 	if(mail($to, $subject, $message, $headers)){
	// 		echo "<h1>Sent Successfully! Thank you"." ".$name.", We will contact you shortly!</h1>";
	// 	}
	// 	else{
	// 		echo "Something went wrong!";
	// 	}
	// }

?>
<!--breadcrumbs-->
<section class="breadcrumbs">
	<div class="container">
		<ul class="horizontal_list clearfix bc_list f_size_medium">
			<li class="m_right_10 current"><a href="#" class="default_t_color">Home<i class="fa fa-angle-right d_inline_middle m_left_10"></i></a></li>
			<li><a href="#" class="default_t_color">Contacts</a></li>
		</ul>
	</div>
</section>
<!--content-->
<div class="page_content_offset">
	<div class="container">
		<div class="row clearfix">
			<!--left content column-->
			<section class="col-lg-9 col-md-9 col-sm-9">

				<div class="row clearfix">
					<div class="col-lg-4 col-md-4 col-sm-4 m_xs_bottom_30">
						<h2 class="tt_uppercase color_dark m_bottom_25">Contact Info</h2>
						<ul class="c_info_list">
							<li class="m_bottom_10">
								<div class="clearfix m_bottom_15">
									<i class="fa fa-map-marker f_left color_dark"></i>
									<p class="contact_e">Road-3, House-208/A, Mohammodia Housing Society<br>Mohammadpur, Dhaka.</p>
								</div>
							</li>
							<li class="m_bottom_10">
								<div class="clearfix m_bottom_10">
									<i class="fa fa-phone f_left color_dark"></i>
									<p class="contact_e">+8801773754462</p>
								</div>
							</li>
							<li class="m_bottom_10">
								<div class="clearfix m_bottom_10">
									<i class="fa fa-envelope f_left color_dark"></i>
									<a class="contact_e default_t_color" href="mailto:#">info@onlinegamingstore.com</a>
								</div>
							</li>
							<li>
								<div class="clearfix">
									<i class="fa fa-clock-o f_left color_dark"></i>
									<p class="contact_e">Monday - Friday: 08.00-20.00 <br>Saturday: 09.00-15.00<br> Sunday: closed</p>
								</div>
							</li>
						</ul>
					</div>
					<div class="col-lg-8 col-md-8 col-sm-8 m_xs_bottom_30">
						<h2 class="tt_uppercase color_dark m_bottom_25">Contact Form</h2>
						<p class="m_bottom_10">Send an email. All fields with an <span class="scheme_color">*</span> are required.</p>

						<form id="" method="post"  action="">
							<ul>
								<li class="clearfix m_bottom_15">
									<div class="f_left half_column">
										<label for="cf_name" class="required d_inline_b m_bottom_5">Your Name</label>
										<input type="text" id="cf_name" name="name" class="full_width r_corners" >
									</div>
									<div class="f_left half_column">
										<label for="cf_email" class="required d_inline_b m_bottom_5">Email</label>
										<input type="email" id="cf_email" name="email" class="full_width r_corners" >
									</div>
								</li>
								<li class="m_bottom_15">
									<label for="cf_subject" class="d_inline_b m_bottom_5">Subject</label>
									<input type="text" id="cf_subject" name="subject" class="full_width r_corners" >
								</li>
								<li class="m_bottom_15">
									<label for="cf_message" class="d_inline_b m_bottom_5 required">Message</label>
									<textarea id="cf_message" name="msg" class="full_width r_corners"></textarea>
								</li>
								<li>
									<button class="button_type_4 bg_light_color_2 r_corners mw_0 tr_all_hover color_dark" type="submit" name="submit" value="send email">Send</button>
								</li>
							</ul>
						</form>

					</div>
				</div>
			</section>
			<!--right column-->

		</div>
	</div>
</div>
<?php
require_once 'footer.php';
?>
