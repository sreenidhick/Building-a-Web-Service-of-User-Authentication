<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<% 
String Driver="com.mysql.jdbc.Driver";
String DB_URL="jdbc:mysql://localhost:3306/HealthCare";
String USER = "root";
String PASS = "Devdath@2016";


String patient_id=request.getParameter("Dlogn_name");
String patient_name=request.getParameter("Dlogin_password");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HealthCare", "root", "Devdath@2016");
Statement stat = con.createStatement();
stat.executeUpdate("delete from Doctor_login where Dlogn_name='"+patient_id+"'");

response.sendRedirect("FetchDlogin.jsp");

%>