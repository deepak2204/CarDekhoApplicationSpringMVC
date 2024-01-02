<%@page import="com.jspiders.cardekhomvc.pojo.CarPOJO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%List<CarPOJO> cars=(List<CarPOJO>)request.getAttribute("cars") ;
   String msg= (String) request.getAttribute("msg"); %>
    <jsp:include page="NavBar.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Dekho SpringMVC</title>
<style type="text/css">
form {
	margin-top: 10px;
}

form table {
	margin: auto;
	width: 100%;
	
}

tr {
	text-align: center;
}
td{
font-size: medium;

}

#data {
	border: 1px solid Black;
	width: 50%;
	border: 1px solid Black;
	color:  white;
}

#data td {
	border: 1px solid black;
	text-align: center;
}
fieldset table {
	margin: auto;
	text-align: center;
}

fieldset {
	margin: 15px 520px;
	text-align: center;
}

legend {
	color: white;
	background-color: #333;
}
body {
	background-image:
		url('https://www.topgear.com/sites/default/files/2023/10/RR-BB-Ghost-Ekleipsis-1.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	background-position: inherit;}
	
#addbtn{
  background-color: Black;
  color: white;
  padding: 5px;
  margin-top: 8px;
  border-radius: 30px;
    
}
h1{
 color: grey;
}

#addbtn:hover {
	padding: 10px;
	border-radius: 10px;
	cursor: pointer;
	color: white;
}

</style>
</head>
<body>
  <h1 align="center">Add New Car Details</h1>
  <div align="center">
		<fieldset>
				
			<form action="./add" method="post">
				<table>
					<tr>
						<td>Car-Name :</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td>Car-brand :</td>
						<td><input type="text" name="brand"></td>
					</tr>
					<tr>
						<td>Fueltype  :</td>
						<td><input type="text" name="fueltype"></td>
					</tr>
					<tr>
						<td>Car-Price :</td>
						<td><input type="text" name="price"></td>
					</tr>
				</table>
				<input id="addbtn" type="submit" value="ADD CAR">
			</form>
		</fieldset>
		
		<%
		if (msg != null) {
		%>
		<h3><%=msg%>
		</h3>
		<%
		}
		%>
		<%
		if (cars != null) {
		%>
		<table id="data">
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>BRAND</th>
				<th>FUELTYPE</th>
				<th>PRICE</th>
			</tr>
			<%
			for (CarPOJO pojo : cars) {
			%>
			<tr>
				<td><%=pojo.getId()%></td>
				<td><%=pojo.getName()%></td>
				<td> <%=pojo.getBrand() %></td>
				<td><%=pojo.getFueltype() %></td>
				<td><%=pojo.getPrice()%></td>
			</tr>
			<%
			}
			%>
		</table>
		<%
		}
		%>
		</div>
</body>
</html>