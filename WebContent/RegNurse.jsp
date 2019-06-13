<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
</head>
<body>
<form action="RegCheckNurse.jsp" method="post">
<table border="0px">
<tr><th>Nurse Registration</th>
</tr>
<tr>

<td>Nurse Id: </td>
<td><input type ="text" name="N_id" value="" placeholder="Enter Id number"/></td>
</tr>
<tr>
<td>Nurse Name</td>
<td><input type ="text" name="N_name" value="" placeholder="Enter Nurse name"/></td>
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
