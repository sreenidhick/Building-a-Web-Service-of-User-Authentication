<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Doctor Information</title>
</head>
<body>
<h1> Enter Doctor Information</h1>

<form  action="DoctorCheck.jsp" method="psot">
<table border="0">

<tr><td>Doctor ID:</td>
<td><input type ="text" name="Doctor Id"></td></tr>

<tr><td>Doctor Name:</td>
<td><input type ="text" name="Doctor Name"></td></tr>

<tr><td>Doctor email:</td>
<td><input type ="text" name="Doctor email"></td></tr>

<tr><td>Doctor Phone:</td>
<td><input type ="text" name="Doctor Phone"></td></tr>

<tr><td>Doctor Address:</td>
<td><input type ="text" name="Doctor Address"></td></tr>

<tr><td>Department:</td>
<td><input type ="text" name="Department"></td></tr>

<tr><td>Doctor Qualification :</td>
<td><input type ="text" name="Doctor Qualification"></td></tr>

<tr><td>Doctor designation :</td>
<td><input type ="text" name="Doctor designation"></td></tr>

</table>
<input type ="submit" value="Save Record">
<tr></table>

</form>
</body>
</html>