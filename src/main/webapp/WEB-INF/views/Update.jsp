<%@page import="com.jspiders.cardekhomvc.pojo.CarPOJO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%List<CarPOJO> cars=(List<CarPOJO>)request.getAttribute("cars"); 
      CarPOJO pojo=(CarPOJO)request.getAttribute("car");
      String msg=(String)request.getAttribute("msg");%>
    <jsp:include page="NavBar.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">



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

h1{
 color:grey;
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



</style>
</head>
<body>
<div align="center">
<h1>Select Car To Update</h1>
       <%
       if (pojo == null) {
       %>
<fieldset>
			
			<form action="./update" method="post">
				<table>
					<tr>
						<td>Enter Car ID : </td>
						<td><input type="text" name="id"></td>
					</tr>
				</table>
				<input id="addbtn" type="submit" value="SELECT">
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
			for (CarPOJO car : cars) {
			%>
			<tr>
				<td><%=car.getId()%></td>
				<td><%=car.getName()%></td>
				<td><%=car.getBrand()%></td>
				<td><%=car.getFueltype()%></td>
				<td><%=car.getPrice()%></td>
			</tr>
			<%
			}
			%>
		</table>
		<%
		}
		} else {
		%>
		<fieldset>
			
			<form action="./updateCar" method="post">
				<table>
					<tr>
						<td>ID</td>
						<td><%=pojo.getId()%></td>
						<td><input type="text" name="id" value="<%=pojo.getId()%>" hidden="true"></td>
					</tr>
					<tr>
						<td>Name</td>
						<td><input type="text" name="name"
							value="<%=pojo.getName()%>"></td>
					</tr>
					<tr>
						<td>Brand</td>
						<td><input type="text" name="brand"
							value="<%=pojo.getBrand()%>"></td>
					</tr>
					<tr>
						<td>Fueltype</td>
						<td><input type="text" name="fueltype"
							value="<%=pojo.getFueltype()%>"></td>
					</tr>
					<tr>
						<td>Price</td>
						<td><input type="text" name="price"
							value="<%=pojo.getPrice()%>"></td>
					</tr>
				</table>
				<input id="addbtn"type="submit" value="UPDATE">
			</form>
		</fieldset>
		<%
		}
		%>
</div>


</body>
</html>