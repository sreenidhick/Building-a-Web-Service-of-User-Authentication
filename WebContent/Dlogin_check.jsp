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
    String Dlogin_name = request.getParameter("Dlogn_name");   
    String Dlogin_password = request.getParameter("Dlogin_password");
    Connection con=DB.con();
    PreparedStatement pst = con.prepareStatement("Select Dlogn_name,Dlogin_password from Doctor_login where Dlogn_name=? and Dlogin_password=?");
    pst.setString(1, Dlogin_name);
    pst.setString(2, Dlogin_password);
    
    ResultSet rs = pst.executeQuery();                        
    if(rs.next()){          
		response.sendRedirect("Dloginsuccessful.html");
    }
    else{
  
		response.sendRedirect("Dloginfailure.html");
    }
}
catch(Exception e){       
		response.sendRedirect("LoginFailure.html");       
}      
%>
</body>
</html>