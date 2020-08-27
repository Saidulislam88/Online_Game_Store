<?php 
     ob_start();
     require_once'../classes/admin.php';
     $obj_admin = new Admin();
     session_start();

    
    if ($_SESSION['admin_id']==NULL) {
    	
    	header('Location:index.php');
    }
    //$l_id = $_GET['l_id'];
    if (isset($_GET['l_id'])){
    	if ($_GET['l_id']=='logout') {

    		$obj_admin->logout();
        }
    	
    }

?>
<!DOCTYPE html>
<html lang="en">

<head>
	
	<!-- start: Meta -->
	<meta charset="utf-8">
	<title>Admin Panel</title>
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="keyword" content="">
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="../asset/admin/css/bootstrap.min.css" rel="stylesheet">
	<link href="../asset/admin/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="../asset/admin/css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="../asset/admin/css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&amp;subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>

	<link rel="shortcut icon" href="../asset/admin/img/favicon.ico">
	<!-- end: Favicon -->
	
	<script type="text/javascript">
		function check_delete(){
			var chk = confirm("Are you sure to delete this?");
			if (chk) {
				return true;
			}else{
				return false;
			}
		}
	</script>	
		
		
</head>

<body>
		<!-- start: Header -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="index.php"><span>Admin Panel</span></a>
								
				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">
						
						
						<!-- start: User Dropdown -->
						<li class="dropdown">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i></i> <?php echo $_SESSION['admin_name'];?>
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								
								<li><a href="?l_id=logout"><i class="halflings-icon off"></i> Logout</a></li>
							</ul>
						</li>
						<!-- end: User Dropdown -->
					</ul>
				</div>
				<!-- end: Header Menu -->
				
			</div>
		</div>
	</div>
	<!-- start: Header -->
	
		<div class="container-fluid-full">
		<div class="row-fluid">
				
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span2">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li>
							<a href="dashboard.php">
								<span class="hidden-tablet"> Dashboard</span>
							</a>
						</li>	
						<li>
							<a href="add_catagory.php">
								<span class="hidden-tablet"> Add Catagory</span>
							</a>
						</li>
						<li>
							<a href="manage_catagory.php">
								<span class="hidden-tablet">Manage Catagory</span>
							</a>
						</li>
						<li>
							<a href="add_manufacturer.php">
								<span class="hidden-tablet"> Add Manufacturer</span>
							</a>
						</li>
						<li>
							<a href="manage_manufacturer.php">
								<span class="hidden-tablet">Manage Manufacturer</span>
							</a>
						</li>
						<li>
							<a href="add_product.php">
								<span class="hidden-tablet"> Add Product</span>
							</a>
						</li>
						<li>
							<a href="manage_product.php">
								<span class="hidden-tablet">Manage Product</span>
							</a>
						</li>
						<!--<li>
							<a href="manage_cart_order.php">
								<i class="icon-edit"></i>
								<span class="hidden-tablet">Manage Order</span>
							</a>
						</li>-->
						<li>
							<a href="manage_order.php">
								<span class="hidden-tablet">Manage Shipping Address & 
							Order</span>
							</a>
						</li>
						<li>
							<a href="manage_customer.php">
								<span class="hidden-tablet">Manage Customer</span>
							</a>
						</li>
		            </ul>
				</div>
			</div>
			<!-- end: Main Menu -->
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<!-- start: Content -->
			<div id="content" class="span10">
			

			<?php 
                
                if (isset($page)) {
                	
               
                	
                     if ($page=='add_catagory_form.php') {
                	    include './pages/add_catagory_form.php';
                    } 
                    if ($page=='manage_catagory_info.php') {
                	    include './pages/manage_catagory_info.php';
                    }
                    if ($page=='edit_catagory_form.php') {
                    	include './pages/edit_catagory_form.php';
                    }
                     if ($page=='add_manufacturer_form.php') {
                	    include './pages/add_manufacturer_form.php';
                    } 
                     if ($page=='manage_manufacturer_info.php') {
                	    include './pages/manage_manufacturer_info.php';
                    }
                    if ($page=='edit_manufacturer_form.php') {
                    	include './pages/edit_manufacturer_form.php';
                    }
                    if ($page=='add_product_form.php') {
                    	include './pages/add_product_form.php';
                    }
                    if ($page=='manage_product_info.php') {
                	    include './pages/manage_product_info.php';
                    }
                    if ($page=='edit_product_form.php') {
                    	include './pages/edit_product_form.php';
                    }
                     if ($page=='manage_cart_order_info.php') {
                	    include './pages/manage_cart_order_info.php';
                    }

                    if ($page=='manage_order_info.php') {
                	    include './pages/manage_order_info.php';
                    }
                    if ($page=='manage_customer_info.php') {
                	    include './pages/manage_customer_info.php';
                    }
                    if ($page=='view_order_products.php') {
                	    include './pages/view_order_products.php';
                    }
                   
                    


                } 

                    else{
                	    include './pages/dashboard_content.php';
                    }

                   

                    


                    

			?>  
			
			
			
		</div>
		</div>
		
	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>Settings</h3>
		</div>
		<div class="modal-body">
			<p>Here settings can be configured...</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Close</a>
			<a href="#" class="btn btn-primary">Save changes</a>
		</div>
	</div>
	
	<div class="clearfix"></div>
	
	<footer>
		<p>
			<span style="text-align:left;float:left">&copy; <a href="#" target="_blank">@Gazi Al-Amin</a> 2019</span>
			<span class="hidden-phone" style="text-align:right;float:right">Powered by: <a href="#">Gazi Al-Amin</a></span>
		</p>

	</footer>
	
	<!-- start: JavaScript-->

		<script src="../asset/admin/js/jquery-1.9.1.min.js"></script>
	    <script src="../asset/admin/js/jquery-migrate-1.0.0.min.js"></script>
	
		<script src="../asset/admin/js/jquery-ui-1.10.0.custom.min.js"></script>
	
		<script src="../asset/admin/js/jquery.ui.touch-punch.js"></script>
	
		<script src="../asset/admin/js/modernizr.js"></script>
	
		<script src="../asset/admin/js/bootstrap.min.js"></script>
	
		<script src="../asset/admin/js/jquery.cookie.js"></script>
	
		<script src='../asset/admin/js/fullcalendar.min.js'></script>
	
		<script src='../asset/admin/js/jquery.dataTables.min.js'></script>

		<script src="../asset/admin/js/excanvas.js"></script>
		<script src="../asset/admin/js/jquery.flot.js"></script>
		<script src="../asset/admin/js/jquery.flot.pie.js"></script>
		<script src="../asset/admin/js/jquery.flot.stack.js"></script>
		<script src="../asset/admin/js/jquery.flot.resize.min.js"></script>
	
		<script src="../asset/admin/js/jquery.chosen.min.js"></script>
	
		<script src="../asset/admin/js/jquery.uniform.min.js"></script>
		
		<script src="../asset/admin/js/jquery.cleditor.min.js"></script>
	
		<script src="../asset/admin/js/jquery.noty.js"></script>
	
		<script src="../asset/admin/js/jquery.elfinder.min.js"></script>
	
		<script src="../asset/admin/js/jquery.raty.min.js"></script>
	
		<script src="../asset/admin/js/jquery.iphone.toggle.js"></script>
	
		<script src="../asset/admin/js/jquery.uploadify-3.1.min.js"></script>
	
		<script src="../asset/admin/js/jquery.gritter.min.js"></script>
	
		<script src="../asset/admin/js/jquery.imagesloaded.js"></script>
	
		<script src="../asset/admin/js/jquery.masonry.min.js"></script>
	
		<script src="../asset/admin/js/jquery.knob.modified.js"></script>
	
		<script src="../asset/admin/js/jquery.sparkline.min.js"></script>
	
		<script src="../asset/admin/js/counter.js"></script>
	
		<script src="../asset/admin/js/retina.js"></script>

		<script src="../asset/admin/js/custom.js"></script>
	<!-- end: JavaScript-->
	
</body>

</html>
