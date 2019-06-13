<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> Welcome to Medical record Information</h1>
<p> We are please to share with you the medical information. Please we encourage legitimate user to have access to our information. 

Therefore please register for login</p>
<form action="loginCheck.jsp" method="post">
<fieldset style="width: 300px">
<legend> Login to App</legend>
<table>
<tr>
<td> User ID</td>
<td> <input type="text" name="username" required="required"/></td>
</tr>
<tr>
<td>Password</td>
<td><input type ="password" name="userpass" required="required"/></td>
</tr>
<tr>
<td><input type="submit" value="login"/></td>
</tr>
</table>
</fieldset>


</form>

</body>
</html>