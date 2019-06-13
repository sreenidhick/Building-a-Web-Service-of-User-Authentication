<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
</head>
<body>
<form action="RegDocCheck.jsp" method="post">
<table border="0px">
<tr><th>Doctor Registration</th>
</tr>
<tr>

<td>Doctor Name: </td>
<td><input type ="text" name="D_name" value="" placeholder="Enter Name"/></td>
</tr>
<tr>
<td>Doctor Email</td>
<td><input type ="text" name="D_email" value="" placeholder="Enter Doctor Email"/></td>
</tr>
<tr>
<td>Doctor Phone</td>
<td><input type ="text" name="D_phone" value="" placeholder="Enter Doctor phone"/></td>
</tr>
<tr>
<td>Doctor Address</td>
<td><input type ="text" name="D_address" value="" placeholder="Enter Doctor address"/></td>
</tr>
<tr>
<td>Doctor Qualification</td>
<td><input type ="text" name="D_qualification" value="" placeholder="Enter Doctor Qualification"/></td>
</tr>
<tr>
<td>Department Id</td>
<td><input type ="text" name="Dept_id" value="" placeholder="Enter Department ID"/></td>
</tr>

</table>
<input type="submit" value="Register">
</form>
</body>
</html>
