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


String N_id=request.getParameter("N_id");
String N_name=request.getParameter("N_name");
String N_email=request.getParameter("N_email");
String N_phone=request.getParameter("N_phone");
String N_address=request.getParameter("N_address");
String Dept_id=request.getParameter("Dept_id");

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
<th><b>Nurse ID</b></th>
<th><b>Nurse Name</b></th>
<th><b>Nurse Email</b></th>
<th><b>Nurse Phone</b></th>
<th><b>Nurse Address</b></th>
<th><b>Department ID</b></th>
<th class="text-center">Update</th>
<th class="text-center">Delete</th>

</tr>
<%
try{
	con=DriverManager.getConnection(DB_URL,USER, PASS);
	stmt=con.createStatement();
	String sql = "SELECT * FROM Nurse order by N_id desc";
	
	res=stmt.executeQuery(sql);
	while(res.next())
	{
%>
		<tr bgcolor="#DE8887">
		
		<td><%=res.getString("N_id") %></td>
		<td><%=res.getString("N_name") %></td>
		<td><%=res.getString("N_email") %></td>
		<td><%=res.getString("N_phone") %></td>
		<td><%=res.getString("N_address") %></td>
		<td><%=res.getString("Dept_id") %></td>
		<td><a href='updateNurse.jsp?N_id=<%=res.getString("N_id")%>'class= "btn btn-warning">Edit</a></td>
		<td><a href='deleteNurse.jsp?N_id=<%=res.getString("N_id") %>' class="btn btn-danger">Delete</a></td>
		
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