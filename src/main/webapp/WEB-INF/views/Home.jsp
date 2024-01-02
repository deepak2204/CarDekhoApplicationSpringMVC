<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Car DEKHO APPLICATION</title>
</head>
<style>
#divP{
	margin-top: 50px;
}
body{
 background-image:url('https://www.topgear.com/sites/default/files/2023/10/RR-BB-Ghost-Ekleipsis-1.jpg');
background-size: cover;
background-repeat: no-repeat;
background-position: inherit;
}
h1{
	margin-top: 50px;
	color: grey;
}
.class2{
	height: 70px;
	width: 110px;
	border-radius: 35px;
	margin-top: 50px;
	background-color:black;
}
.class2:hover{
	height: 80px;
	width: 120px;
	border-radius: 35px;
	background-color: grey;
}
#ch2{
	margin-left: 50px;
}

#ch4{
	margin-left: 50px;
}

</style>
<body>
<div class="class1" align="center">
		<h1>WELCOME TO THE CAR DEKHO APPLICATION</h1>
		<div id="divP">
		<div id="p1">
		<button  id="ch1"class="class2"><a  style="color:white;" href="./add">Add Car</a></button>
		<button id="ch2" class="class2"><a style="color:white;" href="./search">Search Car</a></button>
		</div>
		
		<div id="c2">
			<button id="ch3" class="class2"><a style="color: white;" href="./update">Update Car</a></button>
		    <button id="ch4" class="class2"><a style="color: white;" href="./remove">Remove Car</a></button>
		</div>
	
	
	   
		
	 </div>
	</div>

</body>
</html>