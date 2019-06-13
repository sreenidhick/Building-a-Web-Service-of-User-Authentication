<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Patient Information</title>
</head>
<body>
<h1> Enter Patient Information</h1>

<form  action="PatientCheck.jsp" method="psot">
<table border="0">

<tr><td>Patient ID:</td>
<td><input type ="text" name="Patient Id"></td></tr>

<tr><td>Patient Name:</td>
<td><input type ="text" name="Patient Name"></td></tr>

<tr><td>Patient email:</td>
<td><input type ="text" name="Patient email"></td></tr>

<tr><td>Patient Phone:</td>
<td><input type ="text" name="Patient Phone"></td></tr>

<tr><td>Patient Address:</td>
<td><input type ="text" name="Patient Address"></td></tr>

<tr><td>Patient DOB:</td>
<td><input type ="text" name="Patient DOB"></td></tr>

</table>
<input type ="submit" value="Save Record">
<tr></table>

</form>
</body>
</html>