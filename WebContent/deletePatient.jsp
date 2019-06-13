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


String patient_id=request.getParameter("patient_id");
String patient_name=request.getParameter("patient_name");
String patient_email=request.getParameter("patient_email");
String patient_phone=request.getParameter("patient_phone");
String patient_address=request.getParameter("patient_address");
String patient_dob=request.getParameter("patient_dob");


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HealthCare", "root", "Sophia2018");
Statement stat = con.createStatement();
stat.executeUpdate("delete from Patient where patient_id='"+patient_id+"'");

response.sendRedirect("FetchPatient.jsp");

%>