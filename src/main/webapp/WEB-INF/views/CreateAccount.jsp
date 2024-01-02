<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1>Enter Details To Create Account</h1>
			  <fieldset>
				  
				  <form action="./createAccount" method="post">
					  <table>
						  <tr>
							  <td>Username</td>
							  <td><input type="text" name="username" autofocus="autofocus" ></td>
						  </tr>
						  <tr>
							  <td>Password</td>
							  <td><input type="text" name="password"></td>
						  </tr>
					  </table>
					  <input id="addbtn" type="submit" value="CREATE ACCOUNT">
				  </form>
			  </fieldset>
		  </div>
</body>
</html>