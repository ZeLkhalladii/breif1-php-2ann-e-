<link rel="stylesheet" href="style.css">
<center>
<div id="frmRegistration">
<form class="form-horizontal" action="registration.php" method="POST">
	<h1>User Registration</h1>
	<div class="form-group">
    <label class="control-label col-sm-2" for="firstname">First Name:</label>
    <div class="col-sm-6">
      <input type="text" name="firstname" class="form-control" id="firstname" placeholder="Enter Firstname">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="lastname">Last Name:</label>
    <div class="col-sm-6">
      <input type="text" name="lastname" class="form-control" id="lastname" placeholder="Enter Lastname">
    </div>
  </div>
 

  <div class="form-group">
    <label class="control-label col-sm-2" for="number">Number phone:</label>
    <div class="col-sm-6">
      <input type="text" name="num" class="form-control" id="number" placeholder="Enter Number">
    </div>
  </div>

  <div class="form-group">
    <label class="control-label col-sm-2" for="zone">delivery zone:</label>
    <div class="col-sm-6"> 
      <input type="text" name="zone" class="form-control" id="zone" placeholder="Enter delivery zone">
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" name="create" class="btn btn-primary">register</button>
    </div>
  </div>
</form>
</div>