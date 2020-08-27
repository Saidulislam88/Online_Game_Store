<?php
ob_start();
    include 'header.php';
     // session_start();

   if(isset($_POST['login'])) {
      // username and password sent from form 
      
      $password = $_POST['password'];
      $password = $password;
      $email =$_POST['email'];
      
      $sql = "SELECT customer_id FROM tbl_customer WHERE password = '$password' and email = '$email'";
      $result = mysql_query($sql);
      $row = mysql_fetch_array($result);
      // $active = $row['active'];
      
      $count = mysql_num_rows($result);
      
      // If result matched $myusername and $mypassword, table row must be 1 row
		
      if($count == 1) {
         // session_register("first_name");
        
         $_SESSION["login_check"] = true;
         header("Location: cart.php");
      }else {
      	$_SESSION['Error'] = "Invalid  Email or password Address";
      }
   }
   ob_end_flush(); 
?>


<div class="container">
	<div class="row">
		<section class="tabs_content shadow r_corners">
									<div id="tab-1">
										<!--login form-->
                           

										
										<form method="POST" action="">
											<ul>
												<li class="clearfix m_bottom_15">
													
													<div class="half_column type_2 f_left">
														<label for="pass" class="m_bottom_5 d_inline_b">Email Address</label>
														<input type="email" id="pass" name="email" class="r_corners full_width m_bottom_5" required>
														<a href="cart.php" class="color_dark f_size_medium">Not Registered Yet???</a>
													</div>
													<div class="half_column type_2 f_left">
														<label for="username" class="m_bottom_5 d_inline_b">
														Password</label>
														<input type="password" id="username" name="password" class="r_corners full_width m_bottom_5" required>
														
													</div>
												</li>
												<li class="m_bottom_15">
													<input type="checkbox" class="d_none" name="checkbox_4" id="checkbox_4"><label for="checkbox_4">Remember me</label>
												</li>
												<li><button type="submit" name="login" class="button_type_4 r_corners bg_scheme_color color_light tr_all_hover">Log In</button></li>
												  <?php
													if( isset($_SESSION['Error']) ){ 
					                                      echo $_SESSION['Error'];
					                                      unset($_SESSION['Error']);

                                                     } ?>
											</ul>
										</form>
									</div>
		
	</div>
</div>


<?php
    include 'footer.php';

?>


