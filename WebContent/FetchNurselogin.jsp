<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nurse Registration Check</title>
</head>
<body>

<%
String Driver="com.mysql.jdbc.Driver";
String DB_URL="jdbc:mysql://localhost:3306/HealthCare";
String USER = "root";
String PASS = "Devdath@2016";

Connection con = null;
Statement stmt = null;
ResultSet res = null;


String N_name=request.getParameter("Nlogin_id");
String N_password=request.getParameter("Nlogin_password");
try {
	Class.forName(Driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}



%>
<h2 align="center"><font><strong> Retrieve Nurse Data from Databases in jsp</strong></font></h2><h5><a href="regNurse.jsp">|Add New</a>
<a href="adminmain.html">|Back to Admin|</a></h5>
<table align="center" cellpadding="5" cellspacing="1" border="0">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<th><b>Nurse Name</b></th>
<th><b>Nurse Password</b></th>

<th class="text-center">Update</th>
<th class="text-center">Delete</th>

</tr>
<%
try{
	con=DriverManager.getConnection(DB_URL,USER, PASS);
	stmt=con.createStatement();
	String sql = "SELECT * FROM Nurse_login";
	
	res=stmt.executeQuery(sql);
	while(res.next())
	{
%>
		<tr bgcolor="#DE8887">
		
		<td><%=res.getString("Nlogin_name") %></td>
		<td><%=res.getString("Nlogin_password") %></td>
	
		<td><a href='updateNurse.jsp?N_id=<%=res.getString("Nlogin_name")%>'class= "btn btn-warning">Edit</a></td>
		<td><a href='deleteNurse.jsp?N_id=<%=res.getString("Nlogin_password") %>' class="btn btn-danger">Delete</a></td>
		
		</tr>
<%
}
	con.close();
} catch(Exception e){
	e.printStackTrace();
}


%>

</table>
</body>
</html>