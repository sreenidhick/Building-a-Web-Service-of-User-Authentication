<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Application</title>
</head>
<body>
<style type="text/css">
body{
  font-family: 'Open Sans', sans-serif;
  background-color:#0000;
  width:100%; 
  text-align:justified;
  margin: 20px 0px 20px 0px;   
}
#login{
	width:90%;
	background-color:#ffffffe;

}

p{
  font-size:14px;
  text-decoration: none;

}

h1{
  font-size:1.5em;
  color:Blue;
  text-align:center;

}

</style>
<div id="login">

	<form action="loginServlet" method="post">
		<fieldset style="width: 300px">
			<legend></legend>
			<table border="0">
				<tr>
					<td>UserID</td>
					<td><input type="text" name="username" required="required"/></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="userpass" required="required"/></td>
				</tr>
				<tr>
					<td><input type="submit" value="login"/></td>
				</tr>
			</table>
		
		</fieldset>

	</form>
	</div>
</body>
</html>