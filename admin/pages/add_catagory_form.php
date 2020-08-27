<?php
    if (isset($_POST['btn'])) {
    	$message = $obj_admin->save_catagory_info($_POST);
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
						<h2 style="color: black;">Add Catagory</h2>
						
					</div>
					<div class="box-content">
						<form class="form-horizontal" action="" method="POST">
						  <fieldset>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Catagory Name </label>
							  <div class="controls">
								<input type="text" name="catagory_name" class="span6 typeahead" id="typeahead"  data-provide="typeahead" data-items="4" required="1">
								
							  </div>
							</div>
				            <div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Catagory Description</label>
							  <div class="controls">
								<textarea name="catagory_description" class="cleditor" id="textarea2" rows="3"></textarea>
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Publication Status</label>
							  <div class="controls">
								<select name="publication_status" required>
									<option>Select Status...</option>
									<option value="1">Published</option>
									<option value="0">Unpublished</option>
								</select>
								
							  </div>
							</div>
							<div class="form-actions">
							  <button type="submit" name="btn" class="btn btn-primary">Save changes</button>
							  <button type="submit" name="cancel" class="btn">Cancel</button>
							</div>
						  </fieldset>
						</form>   

				</div>
			</div><!--/span-->
</div><!--/row-->