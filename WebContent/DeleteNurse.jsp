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


String N_id=request.getParameter("N_id");
String N_name=request.getParameter("N_name");
String N_email=request.getParameter("N_email");
String N_phone=request.getParameter("N_phone");
String N_address=request.getParameter("N_address");
String Dept_id=request.getParameter("Dept_id");


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HealthCare", "root", "Sophia2018");
Statement stat = con.createStatement();
stat.executeUpdate("delete from Nurse where N_id='"+N_id+"'");

response.sendRedirect("FetchNurse.jsp");

%>