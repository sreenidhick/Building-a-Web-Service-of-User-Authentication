<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import ="java.util.Scanner" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Check</title>
</head>
<body>

	<%
	String doctor_id = request.getParameter("doctor_id");
	String doctor_name = request.getParameter("doctor_name");
	String doctor_email = request.getParameter("doctor_email");
	String doctor_phone = request.getParameter("doctor_phone");
	String doctor_address = request.getParameter("doctor_address");
	String dept_id = request.getParameter("dept_id");
	String doctor_qualification = request.getParameter("doctor_qualification");
	String doctor_designation = request.getParameter("doctor_designation");
	
	Connection con = DB.con();
	//PreparedStatement pst =	con.prepareStatement("INSERT INTO Doctor(doctor_id,doctor_name,doctor_email,doctor_phone,doctor_address,dept_id,doctor_qualification,doctor_designation),values(?,?,?,?,?,?,?,?)");
	PreparedStatement pst =	con.prepareStatement("INSERT INTO Doctor(doctor_id,doctor_name,doctor_email,doctor_phone,doctor_address,dept_id,doctor_qualification,doctor_designation),values(?,?,?,?,?,?,?,?)");
	pst.setString(1, doctor_id);
	 pst.setString(2, doctor_name);
	 pst.setString(3, doctor_email); 
	 pst.setString(4, doctor_phone);
	 pst.setString(5, doctor_address); 
	 pst.setString(6, dept_id);
	 pst.setString(7, doctor_qualification);
	 pst.setString(8, doctor_designation);
	 
	
	 int i = pst.executeUpdate();
     if(i!=0){
       response.sendRedirect("LoginSuccess.html");
     }
     else{
    	 response.sendRedirect("LoginFailure.html");
     }
   
	
	
	%>
</body>
</html>