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
String PASS = "Sophia2018";

Connection con = null;
Statement stmt = null;
ResultSet res = null;


String D_name=request.getParameter("Dlogn_name");
String D_password=request.getParameter("Dlogin_password");
try {
	Class.forName(Driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}



%>
<h2 align="center"><font><strong> Retrieve Doctor Login information</strong></font></h2><h5><a href="regDoc.jsp">|Add New</a>
<a href="adminmain.html">|Back to Admin|</a></h5>
<table align="center" cellpadding="5" cellspacing="1" border="0">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<th><b>Doctor Name</b></th>
<th><b>Doctor Password</b></th>

<th class="text-center">Update</th>
<th class="text-center">Delete</th>

</tr>
<%
try{
	con=DriverManager.getConnection(DB_URL,USER, PASS);
	stmt=con.createStatement();
	String sql = "SELECT * FROM Doctor_login";
	
	res=stmt.executeQuery(sql);
	while(res.next())
	{
%>
		<tr bgcolor="#DE8887">
		
		<td><%=res.getString("Dlogn_name") %></td>
		<td><%=res.getString("Dlogin_password") %></td>
	
		<td><a href='updateDoclogin.jsp?Dlogn_name=<%=res.getString("Dlogn_name")%>'class= "btn btn-warning">Edit</a></td>
		<td><a href='deletedoctorlogin.jsp?Dlogn_name=<%=res.getString("Dlogn_name") %>' class="btn btn-danger">Delete</a></td>
		
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