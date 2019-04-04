<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="script.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>

</head>


<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-grid.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-grid.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-reboot.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-reboot.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="login.css" type="text/css">


<div id="container">

<body>

<div id="header">
		<h1>Account Registration</h1>
</div>

<form name="regform" action="LoginController" method="post" onsubmit="return regValidate()">

	<font size="3" color="red">${message}<br></font>
	
	<table border = "0">
	
 	 <tr align="left" valign="top">
 	 	<td>First name: </td>
  			<td><input type="text" name ="name"/></td>
	 </tr>
	 
	 
	 <tr align="left" valign="top">
	   <td>Last name:</td>
 		 <td><input type="text" name ="lastName"/></td>
 	 </tr>
 	 
 	  <tr align="left" valign="top">
	   <td>Username</td>
 		 <td><input type="text" name ="username"/></td>
 	 </tr>
 	 <div id="username_error"></div>
 	 
 	  <tr align="left" valign="top">
	   <td>Password</td>
 		 <td><input type="password" name ="password" id="password"/></td>
 	 </tr>
 	 
 	  <tr align="left" valign="top">
	   <td>Re-Type Password: </td>
 		 <td><input type="password" name ="retry-password" id="retry-password"/></td>
 	 </tr>

	<div id="password_error"></div><br>
	<tr align="left" valign="top">
		<td> 
  			<input type="submit" name="submit" value="register" /> 
  			<input type="reset" name="reset">
  		</td>
  	</tr>
	
	</table>
	
</form>
	
</body>
</div>
</html>
