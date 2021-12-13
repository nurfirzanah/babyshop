<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%
	int id=Integer.parseInt(request.getParameter("adminId"));
	
	String password=request.getParameter("adminPass");
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/babystore","root","");
	Statement st= con.createStatement();
	ResultSet rs=st.executeQuery("select * from admin where adminId='"+id+"' and adminPass='"+password+"'");
	try{
		rs.next();
			if(rs.getString("adminPass").equals(password)&&rs.getInt("adminId")==id)
				{
					out.println("Welcome " +id);
					response.sendRedirect("view.jsp");
				}
			
			}
				catch (Exception e) {
			e.printStackTrace();
		} 
		
		try{
			rs.next();
				if(!rs.getString("adminPass").equals(password)&&rs.getInt("adminId")!=id)
					{
						out.println("Welcome " +id);
						response.sendRedirect("loginError.jsp");
					}
				
				}
					catch (Exception e) {
				e.printStackTrace();
			} 
%>