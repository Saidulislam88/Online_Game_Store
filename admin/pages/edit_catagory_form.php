<?php
    $result = $obj_admin->select_catagory_info_by_id($catagory_id);
    $catagory_info = mysql_fetch_assoc($result);
    //echo "<pre>";
    //print_r($catagory_info);
   //exit();
    
    if (isset($_POST['btn'])) {
    	 $obj_admin->update_catagory_info($_POST);
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
						<h2>Edit Catagory</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form name="edit_catagory" class="form-horizontal" action="" method="POST">
						  <fieldset>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Catagory Name </label>
							  <div class="controls">
								<input type="text" name="catagory_name" value="<?php echo $catagory_info['catagory_name']?>" class="span6 typeahead" id="typeahead" data-provide="typeahead" data-items="4">
								<input type="hidden" name="catagory_id" value="<?php echo $catagory_info['catagory_id']?>">
								
							  </div>
							</div>
				            <div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Catagory Description</label>
							  <div class="controls">
								<textarea name="catagory_description" class="cleditor" id="textarea2" rows="3"><?php echo $catagory_info['catagory_description']?></textarea>
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
				document.forms['edit_catagory'].elements['publication_status'].value='<?php echo $catagory_info['publication_status']?>';
			</script>