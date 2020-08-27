<?php

    $query_result = $obj_admin->select_all_order();
   if (isset($_GET['status'])) {
   	$status = $_GET['status'];
   	$id = $_GET['id'];
   	if ($status=='active') {
   		$obj_admin->published_order($id);
   	}
   	else if ($status=='inactive') {
   		$obj_admin->unpublished_order($id);
   	}
   	else if ($status=='delete') {
   		$obj_admin->delete_order($id);
   	}
   }


?>

			<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2>Manage Order Info</h2>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>Shipping Id</th>
								  <th>View Products</th>
								  <th>Customer Address</th>
								  <th>City</th>
								  <th>Phone</th>
								  <th>Zip Code</th>
								  <th>Country</th>
			                      <th>Status</th>
								  <th>Actions</th>
							  </tr>
						  </thead>   
						  <tbody>
						  	<?php
                                while($row = mysql_fetch_assoc($query_result)) {
                                	
                                
						  	?>
							<tr>
								<td><?php echo $row['shipping_id'] ?></td>
								<td>
									<a href="vieworderproducts.php?shipid=<?php echo $row['shipping_id'] ?>">
										<button class="btn btn-primary">
											View
										</button>
									</a>
								</td>
								<td class="center"><?php echo $row['address'] ?></td>
							    <td class="center"><?php echo $row['city'] ?></td>
							    <td class="center"><?php echo $row['phone_number'] ?></td>
							    <td class="center"><?php echo $row['zip_code'] ?></td>
							    <td class="center"><?php echo $row['country'] ?></td>
								<td class="center">
									
								<?php 
                                   if($row['publication_status']==1) {
                                   	
                                   
								 ?>
								<span class="label label-success">Active</span>
								<?php }else{?>
								<span class="label label-important">Inactive</span>
								<?php }?>

								</td>
								<td class="center">
									<?php 
                                       if($row['publication_status']==0) {
                                       	
                                       
									 ?>
									<a class="btn btn-success" href="?status=active&id=<?php echo $row['shipping_id']?>">
										<i class="halflings-icon white thumbs-up"></i>  
									</a>
									<?php }else{?>
									<a class="btn btn-danger" href="?status=inactive&id=<?php echo $row['shipping_id']?>">
										<i class="halflings-icon white thumbs-down"></i>  
									</a>

									<?php }?>
									
									<a class="btn btn-danger" href="?status=delete&id=<?php echo $row['shipping_id']?>" onclick="return check_delete();">
										<i class="halflings-icon white trash"></i> 
									</a>
								</td>
							</tr>
							<?php }?>
						
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
