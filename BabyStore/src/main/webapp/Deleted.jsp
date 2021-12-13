<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import= "java.sql.SQLException"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));

	Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/babystore","root","");
    Statement st = conn.createStatement();
    st.executeUpdate("delete from product where prodID = '"+id+"'");
    //st.executeUpdate(dlteQuery);
    out.println("Deleted!!");
    response.sendRedirect("delete.jsp");
%>