<%@page import="db.DbManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="script.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Login Page</title>
</head>

<link rel="stylesheet" href="login.css" type="text/css">


<div id="container">

<body>

<div id="header">
		<h1>Administrator Login</h1>
		
		<form name="loginform" action="AdminController" method="post" onsubmit="return loginValidate()" > <br>
</div>
	
	<br><br>
	
	
	<table border = "0">
	
 	 <tr align="left" valign="top">
 	 	<td>Username:</td>
  			<td><input type="text" name ="user" id="user"/></td>
	 </tr>
	 
	 <tr align="left" valign="top">
	   <td>Password:</td>
 		 <td><input type="password" name ="pass" id="pass"/></td>
 	 </tr>
 	 
 	 
 	 <tr align="left" valign="top">
		<td> 
  			<input type="submit" name="submit" value="login" /> 
  		</td>
  	</tr>
	
	</table>
	
</body>
</div>
</html>
