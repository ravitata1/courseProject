<%@page import="db.DbManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Book Page</title>
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
	
	<%out.print("Hello!"); %>
	
	
	<%
		DbManager db = new DbManager();
		Connection conn = (Connection) db.getConnection();
		if(conn == null)
			out.print("connection failed");
		else
			out.print("Please enter the information for the book you would like to add or remove..");
	%>
	
	
	<form name="addBookForm" action="addBook" method="post" onsubmit="return loginValidate()">
	<br>
	

	<font size="3" color="green">${yesMessage}</font>
  	<font size="3" color="red">${noMessage}</font>
  	<font size="3" color="green">${successMessage}</font>
  	<br>
	
	
	
	
	<table border = "0">
	
 	 <tr align="left" valign="top">
 	 	<td>Book Title:</td>
  			<td><input type="text" name="title" /></td>
	 </tr>
	 
	 
	 <tr align="left" valign="top">
	   <td>Author Name:</td>
 		 <td><input type="text" name ="author"/></td>
 	 </tr>
 	 
 	 <tr align="left" valign="top">
	   <td>ISBN</td>
 		 <td><input type="text" name ="ISBN"/></td>
 	 </tr>

	
	<tr align="left" valign="top">
		<td> 
  			<input type="submit" name="submit" value="submit" /> 
  			<input type="submit" name="submit" value="remove" /> 
  		</td>
  	</tr>
	

 	</table>
	
	</form>
</div>
</body>
</html>
