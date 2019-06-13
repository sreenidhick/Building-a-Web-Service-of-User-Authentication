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


String D_id=request.getParameter("D_id");
String D_name=request.getParameter("D_name");
String D_email=request.getParameter("D_email");
String D_phone=request.getParameter("D_phone");
String D_address=request.getParameter("D_address");
String D_qualification=request.getParameter("D_qualification");
String Dept_id=request.getParameter("Dept_id");


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HealthCare", "root", "Devdath@2016");
Statement stat = con.createStatement();
stat.executeUpdate("delete from Doctor where D_id='"+D_id+"'");

response.sendRedirect("Fetchdata.jsp");

%>