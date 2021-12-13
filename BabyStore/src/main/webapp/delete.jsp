
<%@page import="java.sql.ResultSet"%>
<%@page import=" java.sql.Connection"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import= "java.sql.SQLException"%>
<%@page import ="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html UBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    Connection conn = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
%>
<h1><center>Mom's Baby World<center></h1>
<form action="Deleted.jsp" method="post">
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
		Delete Product 
	  </div>
	  <div class="card-body"style="background-color:#dfe4ea">
		<blockquote class="blockquote mb-0">
			<div class="form-row">
				
			<table class="table">
			  <thead class="thead-light">
				<tr>
				  <th scope="col">Product ID</th>
				  <th scope="col">Product Name</th>
				  <th scope="col">Size</th>
				  <th scope="col">Quantity</th>
				  <th scope="col">Description</th>
				  <th scope="col">Price</th>
				  <th scope="col">Action</th>
				</tr>
			  </thead>
			  <tbody>
				   </tr>
        <%
     	   Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/babystore","root","");
 
       		 Statement st = conn.createStatement();

            String selectQuery = "SELECT * FROM product";
            pst = conn.prepareStatement(selectQuery);
            rs = pst.executeQuery();
          
            while(rs.next()){
        %>
            <tr width="100%">
                <td align="center"><%=rs.getInt("prodID") %></td>
                <td align="center"><%=rs.getString("prodName") %></td>
                <td align="center"><%=rs.getString("prodSize") %></td>
                <td align="center"><%=rs.getInt("prodQty") %></td>
                <td align="center"><%=rs.getString("prodDesc") %></td>
                <td align="center"><%=rs.getDouble("price") %></td>
                <td><a href="Deleted.jsp?id=<%=rs.getString("prodID")%>" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">DELETE</a></td>   
              
            </tr>
        <%} %>
			  				   
			  </tbody>
			</table>
			</div>
		</blockquote>

	</div>
</div>
</div>

</form>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>