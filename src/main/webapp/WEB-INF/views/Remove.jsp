<%@page import="com.jspiders.cardekhomvc.pojo.CarPOJO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="NavBar.jsp"/>
 <%
 List<CarPOJO> cars = (List<CarPOJO>)request.getAttribute("cars");
 String msg = (String) request.getAttribute("msg");
 %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	color: white;
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
#addbtn:hover {
	padding: 10px;
	border-radius: 10px;
	cursor: pointer;
	color: white;
}
h1{
color:grey;
}

</style>
</head>
<body>
<div align="center">
<h1>Remove Car Details</h1>
		<fieldset>
			
			<form action="./remove" method="post">
				<table>
					<tr>
						<td>Enter Car ID : </td>
						<td><input type="text" name="id"></td>
					</tr>
				</table>
				<input id="addbtn" type="submit" value="REMOVE">
			</form>
		</fieldset>
			<%
		if (msg != null) {
		%>
		<h3>
			<%=msg%>
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
				<td><%=pojo.getBrand()%></td>
				<td><%=pojo.getFueltype()%></td>
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