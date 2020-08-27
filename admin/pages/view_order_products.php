<?php

if (isset($_GET['shipid'])) {
   	$shipid = $_GET['shipid'];
    $query_result = $obj_admin->all_order_itms($shipid);
   }

?>

			<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2>Order Products </h2>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>Product ID</th>
								  <th>Product Name</th>
								  <th>Product Price</th>
								  <th>Product Quantity</th>
							  </tr>
						  </thead>   
						  <tbody>
						  	<?php
						  	$sum=0;
                                while($row = mysql_fetch_assoc($query_result)) {
                                	
                                  $sum += $row['product_price']*$row['quantity'];
						  	?>
							<tr>
								<td><?php echo $row['product_id'] ?></td>
								<td class="center"><?php echo $row['product_name'] ?></td>
							    <td class="center"><?php echo $row['product_price'] ?></td>
							    <td class="center"><?php echo $row['quantity'] ?></td>
							   
							</tr>
							<?php }?>
							<tr>
								<td style="text-align: center;" colspan="4"> <h4>Total Price: <?php echo $sum; ?></h4></td>
							</tr>
						    
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
				<p style="color: white;">a</p>
				<p style="color: white;">a</p>
				<p style="color: white;">a</p>
				<p style="color: white;">a</p>
				<p style="color: white;">a</p>
				<p style="color: white;">a</p>
				<p style="color: white;">a</p>
				<p style="color: white;">a</p>
				<p style="color: white;">a</p>

			</div><!--/row-->
