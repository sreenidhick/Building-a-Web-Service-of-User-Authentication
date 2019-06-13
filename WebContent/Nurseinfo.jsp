<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Nurse Information</title>
</head>
<body>
<h1> Enter Nurse Information</h1>

<form  action="NurseCheck.jsp" method="psot">
<table border="0">

<tr><td>Nurse ID:</td>
<td><input type ="text" name="Nurse Id"></td></tr>

<tr><td>Nurse Name:</td>
<td><input type ="text" name="Nurse Name"></td></tr>

<tr><td>Department :</td>
<td><input type ="text" name="Department Id"></td></tr>

</table>
<input type ="submit" value="Save Record">
<tr></table>

</form>
</body>
</html>