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
<title>Patient Information</title>
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


String patient_id=request.getParameter("patient_id");
String patient_name=request.getParameter("patient_name");
String patient_email=request.getParameter("patient_email");
String patient_phone=request.getParameter("patient_phone");
String patient_address=request.getParameter("patient_address");
String patient_dob=request.getParameter("patient_dob");

try {
	Class.forName(Driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}



%>
<h2 align="center"><font><strong> Retrieve Patient Data from Databases in jsp</strong></font></h2><h5><a href="regPatient.jsp">|Add New</a>
<a href="adminmain.html">|Back to Admin|</a></h5>
<table align="center" cellpadding="5" cellspacing="1" border="0">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<th><b>Patient ID</b></th>
<th><b>Patient Name</b></th>
<th><b>Patient Email</b></th>
<th><b>Patient Phone</b></th>
<th><b>Patient Address</b></th>
<th><b>Patient_dob</b></th>
<th class="text-center">Update</th>
<th class="text-center">Delete</th>

</tr>
<%
try{
	con=DriverManager.getConnection(DB_URL,USER, PASS);
	stmt=con.createStatement();
	String sql = "SELECT * FROM Patient order by patient_id desc";
	
	res=stmt.executeQuery(sql);
	while(res.next())
	{
%>
		<tr bgcolor="#DE8887">
		
		<td><%=res.getString("patient_id") %></td>
		<td><%=res.getString("patient_name") %></td>
		<td><%=res.getString("patient_email") %></td>
		<td><%=res.getString("patient_phone") %></td>
		<td><%=res.getString("patient_address") %></td>
		<td><%=res.getString("patient_dob") %></td>
		<td><a href='updatePatient.jsp?patient_id=<%=res.getString("patient_id")%>'class= "btn btn-warning">Edit</a></td>
		<td><a href='deletePatient.jsp?patient_id=<%=res.getString("patient_id") %>' class="btn btn-danger">Delete</a></td>
		
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