<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
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
try{
    String Alogin_name = request.getParameter("Alogin_name");   
    String Alogin_password = request.getParameter("Alogin_password");
    Connection con=DB.con();
    PreparedStatement pst = con.prepareStatement("Select Alogin_name,Alogin_password from Admin where Alogin_name=? and Alogin_password=?");
    pst.setString(1, Alogin_name);
    pst.setString(2, Alogin_password);
    
    ResultSet rs = pst.executeQuery();                        
    if(rs.next()){          
		response.sendRedirect("LoginSuccessful.html");
    }
    else{
  
		response.sendRedirect("LoginFailure.html");
    }
}
catch(Exception e){       
		response.sendRedirect("LoginFailure.html");       
}      
%>
</body>
</html>
