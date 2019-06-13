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
    String username = request.getParameter("username");   
    String password = request.getParameter("password");
    Connection con=DB.con();
    PreparedStatement pst = con.prepareStatement("Select username,password from user where username=? and password=?");
    pst.setString(1, username);
    pst.setString(2, password);
    
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


