<?php
    $result = $obj_admin->select_manufacturer_info_by_id($manufacturer_id);
    $manufacturer_info = mysql_fetch_assoc($result);
    //echo "<pre>";
    //print_r($catagory_info);
   //exit();
    
    if (isset($_POST['btn'])) {
    	 $obj_admin->update_manufacturer_info($_POST);
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
						<h2>Edit Manufacturer</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form name="edit_manufacturer" class="form-horizontal" action="" method="POST">
						  <fieldset>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Manufacturer Name </label>
							  <div class="controls">
								<input type="text" name="manufacturer_name" value="<?php echo $manufacturer_info['manufacturer_name']?>" class="span6 typeahead" id="typeahead" data-provide="typeahead" data-items="4">
								<input type="hidden" name="manufacturer_id" value="<?php echo $manufacturer_info['manufacturer_id']?>">
								
							  </div>
							</div>
				            <div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Manufacturer Description</label>
							  <div class="controls">
								<textarea name="manufacturer_description" class="cleditor" id="textarea2" rows="3"><?php echo $manufacturer_info['manufacturer_description']?></textarea>
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
				document.forms['edit_manufacturer'].elements['publication_status'].value='<?php echo $manufacturer_info['publication_status']?>';
			</script>