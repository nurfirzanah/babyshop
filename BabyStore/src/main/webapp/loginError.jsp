<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head>
<meta charset="ISO-8859-1">
<title>login</title>
</head>
<body>
<h1><center>Mom's Baby World<center></h1>
	<form action="logindb.jsp" method="post">
		 <div class="card-body"style="background-color:#dfe4ea">
		<blockquote class="blockquote mb-0">
			<center><label for="adminId" style="color:black;font-size:16px;"><b> ADMIN ID:</b></label><br>
			<input type="text"  name="adminId" id="adminId" required autocomplete="off"></center>
			<center><label for="adminPass" style="color:black;font-size:16px;"><b> PASSWORD:</b></label><br>
			<input type="password"  name="adminPass" id="adminPass" required autocomplete="off"></center><br><br>
		<center><input type="submit"></center>
		</blockquote>
		</div>
	</form>	

</html>