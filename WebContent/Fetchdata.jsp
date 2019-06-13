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
<title>Registration Check</title>
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


String D_id=request.getParameter("D_id");
String D_name=request.getParameter("D_name");
String D_email=request.getParameter("D_email");
String D_phone=request.getParameter("D_phone");
String D_address=request.getParameter("D_address");
String D_qualification=request.getParameter("D_qualification");
String Dept_id=request.getParameter("Dept_id");

try {
	Class.forName(Driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}



%>
<h2 align="center"><font><strong> Retrieve Data from Databases in jsp</strong></font></h2><h5><a href="regDoc.jsp">|Add New</a>
<a href="adminmain.html">|Back to Admin|</a></h5>
<table align="center" cellpadding="5" cellspacing="1" border="0">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<th><b>Doctor ID</b></th>
<th><b>Doctor Name</b></th>
<th><b>Doctor Email</b></th>
<th><b>Doctor Phone</b></th>
<th><b>Doctor Address</b></th>
<th><b>Doctor Qualification</b></th>
<th><b>Department ID</b></th>
<th class="text-center">Update</th>
<th class="text-center">Delete</th>

</tr>
<%
try{
	con=DriverManager.getConnection(DB_URL,USER, PASS);
	stmt=con.createStatement();
	String sql = "SELECT * FROM DOCTOR order by D_id desc";
	
	res=stmt.executeQuery(sql);
	while(res.next())
	{
%>
		<tr bgcolor="#DE8887">
		
		<td><%=res.getString("D_id") %></td>
		<td><%=res.getString("D_name") %></td>
		<td><%=res.getString("D_email") %></td>
		<td><%=res.getString("D_phone") %></td>
		<td><%=res.getString("D_address") %></td>
		<td><%=res.getString("D_qualification") %></td>
		<td><%=res.getString("Dept_id") %></td>
		<td><a href='updateDoctor.jsp?D_id=<%=res.getString("D_id")%>'class= "btn btn-warning">Edit</a></td>
		<td><a href='deleteDoctor.jsp?D_id=<%=res.getString("D_id") %>' class="btn btn-danger">Delete</a></td>
		
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