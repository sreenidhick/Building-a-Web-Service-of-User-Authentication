<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<style type="text/css">
body{
  font-family: 'Open Sans', sans-serif;
  background-color:#0000;
  width:100%; 
  text-align:justified;
  margin: 20px 0px 20px 0px;   
}
#login{
	width:60%;
	background-color:#ffffffe;
	align:center;
	text-align:justified;

}

p{
  font-size:14px;
  text-decoration: none;

}

h3{
  font-size:0.8em;
  color:Blue;
  text-align:center;

}
</style>
</head>

<body align="center">
<div id="login" align="center">
	<h3> Admin Login </h3>
	<form action="logincheck.jsp" method="post">
	<table border="0" text-align="center">
	<tr><td>UserName:</td>
	<td><input type="text" name="Alogin_name"></td>
	</tr>
	<tr><td>Password</td>
	<td><input type="password" name="Alogin_password"></td>
	</tr>
	
	</table>
	<input type="submit" value="login">
	</form>
	<p></p>
	<p></p>
	
<p><a href="index.html">Main Page</a></p>

</div>




</body>
</html>