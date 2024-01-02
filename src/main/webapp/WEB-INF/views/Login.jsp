<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String msg=(String)request.getAttribute("msg"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Dekho WebApp</title>
<style type="text/css">
body{
background-image:
		url('https://img.freepik.com/premium-vector/happy-people-celebrating-buying-auto-automobile-purchase-men-standing-near-new-sedan-car-wrapped-with-big-festive-bow-cars-rent-sharing-leasing-successful-deal-car-key-hand_458444-973.jpg?w=2000');
background-size: cover;
background-repeat: no-repeat;
background-position: inherit;
}
fieldset {
	border: 1px solid Black;
	width: 30%; 
	border: 1px solid Black;
	color: white;
}
</style>
</head>
<body>

   <div align="center">
   <h1> Welcome To CarDekho WebApplication </h1>
   <h2>Please Login to Proceed Further</h2>
   <%
		if (msg != null) {
		%>
		<h4>
			<%=msg%>
		</h4>
		<%
		}
		%>
		<fieldset>
			
			<form action="./login" method="post">
				<table>
					<tr>
						<td style="color: black;">Username : </td>
						<td><input type="text" name="username"></td>
					</tr>
					<tr>
						<td style="color: black;">Password  : </td>
						<td><input type="password" name="password"></td>
					</tr>
				</table>
				<input id="addbtn" type="submit" value="LOGIN">
			</form>

		</fieldset>
		<a href="http://localhost:8080/cardekhomvc/createAccount">click here/Create new Account</a>
	</div>

</body>
</html>