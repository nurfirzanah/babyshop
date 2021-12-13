<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>INSERT</title>
</head>
<body>
<h1><center>Mom's Baby World<center></h1>
<form action="insertdb" method="post">
<div style="background-color:#95afc0">
	<div class="container">
		<div class="row">
		<div class="col-md-8 pt-2 pb-2" >
				<a class="pl-3" style="color:black" href="view.jsp">View Product</a>
				<a class="pl-3 " style="color:black" href="addproduct.jsp">Add Product</a>
				<a class="pl-3" style="color:black" href="editproduct.jsp">Edit Product</a>
				<a class="pl-3" style="color:black" href="delete.jsp">Delete Product</a>
			</div>
			<div class="col-md-4 pt-2 pb-2" style="float:right; padding-left: 140px;" >
				<a href="Login.html" style="color:white"><button type="button" button class="btn btn-default btn-sm"><span class="glyphicon glyphicon-log-out"></span>Log Out</button></a>    
			</div>
		</div>
	</div>
</div>
<div class="container"><br><br>
<div class="card">
	  <div class="card-header"style="background-color:#ffffff">
		Add Product
	  </div>
	  <div class="card-body"style="background-color:#dfe4ea">
		<blockquote class="blockquote mb-0">
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="name" style="color:black;font-size:16px;"><b>Product Name:</b></label>
					<input type="text" class="form-control" name="name" id="name" required autocomplete="off">
				</div>	
				<div class="form-group col-md-6">
					<label for="price" style="color:black;font-size:16px;"><b> Price:</b></label>
					<input type="text" class="form-control" name="price" id="price" required autocomplete="off">
				</div>
			</div>
			
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="size" style="color:black;font-size:16px;"><b>Size:</b></label>
					<select class="form-control " name="size" id="size">  
						<option value="" >Choose </option>
						<option value="2-5 years" >2-5 years </option>
						<option value="0-6 months" >0-6 months </option>
					</select>
				</div>
				<div class="form-group col-md-6">
					<label for="qty" style="color:black;font-size:16px;"><b>Quantity:</b></label>
					<input type="text" class="form-control" name="qty" id="qty" required autocomplete="off">
				</div>	
			</div>
			
			<div class="form-row">
				<div class="form-group col-md-12">
					<label for="desc" style="color:black;font-size:16px;"><b>Description:</b></label>
					<input type class="form-control" name="desc" id="desc" rows="4" cols="50" required autocomplete="off">
				</div>
				
			</div>

					<center><a href="insertdb" style="color:white"><button class="btn-1"align="center"><h7>Save</h7></button></a></center>

			
		</blockquote>
		</div>	
</div>
		
		

  
   
</form>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>