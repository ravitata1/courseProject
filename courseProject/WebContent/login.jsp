<%@page import="db.DbManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
	<script type="text/javascript" src="script.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Login Page</title>
</head>


<link rel="stylesheet" href="login.css" type="text/css">


<div id="container">
	<body>

		<div id="header">
		<h1>  Welcome to Group 9 Bookstore!</h1>
</div>

<div class="nav-bar">
		<ul class="nav">
			<li><a href="register.jsp">Account Registration</a></li>
			<li><a href="shop.jsp">Browse</a></li>
			<li><a href="adminLogin.jsp">Admin Portal</a></li>
		</ul>
</div>


<div id="content">
	<br>
	
	<%out.print("Please sign-in or register below.."); %>

	
	<%-- ! int number1, number2; --%>
	
	<br/>
	
	<form name="loginform" action="LoginController" method="post" onsubmit="return loginValidate()" > <br>
	<%-- ${message}  --%>
	<%--  ${successMessage}<br>   --%>
	
	</div>
	
	Username: <input type="text" name="username" id="username"><br>
	Password: <input type="password" name="password" id="password"><br>
	<input type="submit" name="submit" value="login"><br>

	</form>
	
</body>
</div>
</html>