<?php
      require_once '../classes/product.php';
      $obj_product = new Product();
      $catagory_result = $obj_product->select_published_catagory();
      $manufacturer_result = $obj_product->select_published_manufacturer();

    if (isset($_POST['btn'])) {
    	$message = $obj_product->save_product_info($_POST,$_FILES);
    }
     if (isset($_POST['cancel'])) {
    	require_once 'add_manufacturer_form.php';
    }

?>
<h2>
	<?php
         if (isset($message)) {
         	echo $message;
         	unset($message);
         }
	?>
</h2>


<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2>Add Product</h2>
					</div>
					<div class="box-content">
						<form class="form-horizontal" action="" method="POST" enctype="multipart/form-data">
						  <fieldset>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Product Name </label>
							  <div class="controls">
								<input type="text" name="product_name" class="span6 typeahead" id="typeahead"  data-provide="typeahead" data-items="4" >
								
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
									<option value="<?php echo $row['catagory_id'] ;?>"><?php echo $row['catagory_name'] ?></option>
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
									<option value="<?php echo $row['manufacturer_id'] ?>"><?php echo $row['manufacturer_name'] ?></option>
									<?php }?>
								</select>
								
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Product Price </label>
							  <div class="controls">
								<input type="text" name="product_price" class="span6 typeahead" id="typeahead"  data-provide="typeahead" data-items="4" >
								
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Product Quantity </label>
							  <div class="controls">
								<input type="text" name="product_quantity" class="span6 typeahead" id="typeahead"  data-provide="typeahead" data-items="4" >
								
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Product SKU </label>
							  <div class="controls">
								<input type="text" name="product_sku" class="span6 typeahead" id="typeahead"  data-provide="typeahead" data-items="4" >
								
							  </div>
							</div>

							<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Product Short Description</label>
							  <div class="controls">
								<textarea name="product_short_description" id="textarea2" rows="8"></textarea>
							  </div>
							</div>
							
							<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Product Long Description</label>
							  <div class="controls">
								<textarea name="product_long_description" id="textarea2" rows="8"></textarea>
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Product Image</label>
							  <div class="controls">
								<input class="file" name="product_image" id="fileInput" type="file">
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
							  <button type="submit" name="btn" class="btn btn-primary">Save</button>
							  <button type="submit" name="cancel" class="btn">Cancel</button>
							</div>
						  </fieldset>
						</form>   

					</div>
				</div><!--/span-->

			</div><!--/row-->