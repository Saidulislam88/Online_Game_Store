<?php
ob_start();
require_once 'header.php';
?>

<?php

     if (isset($_POST['shipping_button'])) {
     	$sql = "INSERT INTO tbl_shipping(name,email_address,address,phone_number,city,country,zip_code)VALUES('$_POST[name]','$_POST[email_address]','$_POST[address]','$_POST[phone_number]','$_POST[city]','$_POST[country]','$_POST[zip_code]')";
     	if (mysql_query($sql)) {
     		$shipping_id = mysql_insert_id();
     		$_SESSION['shipping_id'] = $shipping_id;

     		$last_item = mysqli_query($link,"SELECT * from tbl_shipping ORDER BY shipping_id DESC LIMIT 1");
     		while ($last_itemr = mysqli_fetch_assoc($last_item)) {
				$_SESSION['ping_id'] = $last_itemr['shipping_id'];

			}
     		
     	    header("Location: payment_page.php");	

    	}else{
    		die("Query Problem".mysql_error());
    	}
     }


?>
<section class="breadcrumbs">
	<div class="container">
	    <h3>Welcome <?php echo $_SESSION['customer_name']; ?></h3>
	</div>
</section>
<div class="container">
	<div class="row">
		
		<div class="bs_inner_offsets bg_light_color_3 shadow r_corners m_bottom_45">
			<div class="row clearfix">
				<div class="col-lg-6 col-md-6 col-sm-6 m_xs_bottom_30">
					<div class="col-lg-6 col-md-6 col-sm-6">
						<h5 class="fw_medium m_bottom_15">Ship To</h5>
						<form method="POST" action="">
							<ul>
							
								<li class="m_bottom_15">
									<label for="a_name_1" class="d_inline_b m_bottom_5">Name</label>
									<input type="text" id="a_name_1" name="name" class="r_corners full_width" required>
								</li>
								<li class="m_bottom_15">
									<label for="c_name_2" class="d_inline_b m_bottom_5 required">Email</label>
									<input type="email" id="c_name_2" name="email_address" class="r_corners full_width" required>
								</li>
								<li class="m_bottom_15">
									<label for="f_name_2" class="d_inline_b m_bottom_5">Address</label>
									<input type="text" id="f_name_2" name="address" class="r_corners full_width" required>
								</li>
								<li class="m_bottom_15">
									<label for="m_name_2" class="d_inline_b m_bottom_5">Mobile Number</label>
									<input type="number" id="m_name_2" name="phone_number" class="r_corners full_width" required>
								</li>
								<li class="m_bottom_15">
									<label for="l_name_2" class="d_inline_b m_bottom_5">City</label>
									<input type="text" id="l_name_2" name="city" class="r_corners full_width" required>
								</li>
									<li class="m_bottom_15">
									<label class="d_inline_b m_bottom_5">Country</label>
									<!--product name select-->
									<div class="custom_select relative">
										<div class="select_title type_2 r_corners relative color_dark mw_0">Please select</div>
									<ul class="select_list d_none"></ul>
									<select name="country">
										<option value="Bangladesh">Bangladesh</option>
										<option value="Australia">Australia</option>
										
									</select>
								</div>
							</li>
							
								<li class="m_bottom_15">
									<label for="code_2" class="d_inline_b m_bottom_5">Zip / Postal Code</label>
									<input type="text" id="code_2" name="zip_code" class="r_corners full_width" required>
								</li>
							
						
						
					<button type="submit" name="shipping_button" class="button_type_4 r_corners bg_scheme_color color_light tr_all_hover">Save Shipping Info</button>
				</li>
					</ul>
				</form>
			</div>
			
		</div>
	</div>
	
</div>

</div>
</div>
</div>

</div>


<?php
require_once 'footer.php';
?>