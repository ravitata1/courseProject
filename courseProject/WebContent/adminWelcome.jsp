<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
	<script type="text/javascript" src="script.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Welcome Page</title>
</head>


<link rel="stylesheet" href="login.css" type="text/css">


<div id="container">

<body>


<h1> ${message} welcome </h1>

<div class="nav-bar">
		<ul class="nav">
			<li><a href="shop.jsp">Browse Books</a></li>
			<li><a href="addBook.jsp">Update Books</a></li>
			<li><a href="addAdmin.jsp" > Update Admins</a>
			<li><a href="logout.jsp">Logout</a></li>
		</ul>
	</div>

</body>
</div>
</html>
