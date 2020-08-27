<?php
      require_once '../classes/product.php';
	$obj_product = new Product();
	$catagory_result = $obj_product->select_published_catagory();
	$manufacturer_result = $obj_product->select_published_manufacturer();

    $result = $obj_admin->select_product_info_by_id($product_id);
    $product_info = mysql_fetch_assoc($result);
    $catagory_info = mysql_fetch_assoc($result);
    //echo "<pre>";
    //print_r($catagory_info);
   //exit();
    
    if (isset($_POST['btn'])) {
    	 $obj_admin->update_product_info($_POST);
    }

?>
<h2>
	<?php
         // if (isset($message)) {
         // 	echo $message;
         // 	unset($message);
         // }
	?>
</h2>


<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2>Edit Product</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form name="edit_product" class="form-horizontal" action="" method="POST">
						  <fieldset>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Product Name </label>
							  <div class="controls">
								<input type="text" name="product_name" value="<?php echo $product_info['product_name']?>" class="span6 typeahead" id="typeahead" data-provide="typeahead" data-items="4">
								<input type="hidden" name="product_id" value="<?php echo $product_info['product_id']?>">
								
							  </div>
							</div>
							
							<div class="control-group">
							  <label class="control-label" for="typeahead">Catagory Name</label>
							  <div class="controls">
								<select name="catagory_id">
									<option>Select Name...</option>
									<?php
                                      while($row=mysql_fetch_assoc($catagory_result)){   
									?>
									<option <?php if($row['catagory_id']==$product_info['catagory_id']) echo 'selected'; ?> value="<?php echo $row['catagory_id'] ;?>"><?php echo $row['catagory_name'] ?></option>

									<?php }?>
								</select>
								
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Manufacturer Name</label>
							  <div class="controls">
								<select name="manufacturer_id">
									<option>Select Name...</option>
									<?php
                                      while($row=mysql_fetch_assoc($manufacturer_result)){   
									?>
									<option <?php if($row['manufacturer_id']==$product_info['manufacturer_id']) echo 'selected'; ?> value="<?php echo $row['manufacturer_id'] ?>"><?php echo $row['manufacturer_name'] ?></option>
									<?php }?>
								</select>
								
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Product Price</label>
							  <div class="controls">
								<input type="text" name="product_price" value="<?php echo $product_info['product_price']?>" class="span6 typeahead" id="typeahead" data-provide="typeahead" data-items="4">
								<input type="hidden" name="product_id" value="<?php echo $product_info['product_id']?>">
								
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Product Quantity</label>
							  <div class="controls">
								<input type="text" name="product_quantity" value="<?php echo $product_info['product_quantity']?>" class="span6 typeahead" id="typeahead" data-provide="typeahead" data-items="4">
								<input type="hidden" name="product_id" value="<?php echo $product_info['product_id']?>">
								
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Product Quantity</label>
							  <div class="controls">
								<input type="text" name="product_sku" value="<?php echo $product_info['product_sku']?>" class="span6 typeahead" id="typeahead" data-provide="typeahead" data-items="4">
								<input type="hidden" name="product_id" value="<?php echo $product_info['product_id']?>">
								
							  </div>
							</div>
							
							<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Product Short Description</label>
							  <div class="controls">
								<textarea name="product_short_description" class="cleditor" id="textarea2" rows="3"><?php echo $product_info['product_short_description']?></textarea>
							  </div>
							</div>
							<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Product Long Description</label>
							  <div class="controls">
								<textarea name="product_long_description" class="cleditor" id="textarea2" rows="3"><?php echo $product_info['product_long_description']?></textarea>
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Product Image</label>
							  <div class="controls">
								<input class="file" name="product_image" id="fileInput" type="file" value="">
								<img src="<?php echo $product_info['product_image']?>">
								
                                 
							  </div>
							</div>  
							<div class="control-group">
							  <label class="control-label" for="typeahead">Publication Status</label>
							  <div class="controls">
								<select name="publication_status">
									<option>Select Status...</option>
									<option value="1">Published</option>
									<option value="0">Unpublished</option>
								</select>
								
							  </div>
							</div>
							<div class="form-actions">
							  <button type="submit" name="btn" class="btn btn-primary">Update</button>
							  <button type="reset" class="btn">Cancel</button>
							</div>
						  </fieldset>
						</form>   

					</div>
				</div><!--/span-->

			</div><!--/row-->

			<script type="text/javascript">
				document.forms['edit_product'].elements['publication_status'].value='<?php echo $product_info['publication_status']?>';
			</script>