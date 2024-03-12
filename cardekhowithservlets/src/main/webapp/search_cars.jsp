<%@page import="com.jspiders.cardekhowithservlets.object.Car"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
* {
	background-color: black;
}

main {
	width: 100%;
	height: 100vh;
	background-color: black;
}

main header nav {
	width: 100%;
	background-color: black;
	height: 100px;
	box-shadow: 0px 0px 0px 2px white;
}

main header nav ul {
	margin-left: 44%;
	margin-top: -85px;
}

main header nav ul li {
	display: inline-block;
	margin-top: 40px;
	text-decoration: none;
	background-color: white;
	color: black;
	margin-left: 20px;
	height: 30px;
	border-radius: 10%;
	text-align: center;
}

main header nav ul li a {
	padding: 10px;
	color: white;
	text-decoration: none;
	border-radius: 10%;
	text-align: center;
	box-shadow: 0px 0px 0px 2px white;
}

#parent1 {
	display: flex;
	
	margin-left: 350px;
	width: 800px;
	margin-top: 100px;
}
th{
background-color: white;
color: black;
}
tr{
height: 50px;
font-size: 35px;
color:white;


}

td{
width:900px;
font-size: 25px;
align-items: center;
}
#tab{
box-shadow: 0px 0px 0px 2px white;
border: 1px solid white;
}
main header nav ul li a:hover{
         background-color: #7F00FF;
         }
        
         input[type="submit"]:hover {
	background-color: green;
	color: white;}
	#logo
	{
	 padding: 10px;
	 width: 20%;
	
	 
	}
	header{
	display: flex;
	
	}
</style>
</head>
<body>
	<main>
		<header style="height: 200px">
			<nav>
			<div id="logo">
            <span> <h1 style="color: white">CARDEKHO </h1></span>
            </div>

				<div id="parent">
					<ul>
                        <li><a href=" http://localhost:8080/cardekhowithservlets/home.jsp">Home</a></li>
                        
						<li><a href="http://localhost:8080/cardekhowithservlets/add_car.jsp">AddCar</a></li>
						<li><a href="http://localhost:8080/cardekhowithservlets/remove_car.jsp">Remove Car</a></li>
						<li><a href="http://localhost:8080/cardekhowithservlets/search_cars">View Car</a></li>
						<li><a href="http://localhost:8080/cardekhowithservlets/search_by_id.jsp">SearchById</a></li>
						<li><a href=" http://localhost:8080/cardekhowithservlets/search_name.jsp">SearchByName</a></li>
						<li><a href="http://localhost:8080/cardekhowithservlets/update_car.jsp">Update Car</a></li>
					</ul>

				</div>

			</nav>
		</header>
	
	<%
	List<Car> cars = (List<Car>) request.getAttribute("cars");
	if (cars != null && cars.size() > 0) {
	%>
	<h1 style="color: white" align="center" > Below are the list of available cars</h1>
	<div align="center" id="parent1">
	
		<table border="1px solid" id="tab">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Brand</th>
				<th>Price</th>
			</tr>
			<%
			for (Car car : cars) {
			%>
			<tr>
				<td><%=car.getId()%></td>
				<td><%=car.getName()%></td>
				<td><%=car.getBrand()%></td>
				<td><%=car.getPrice()%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<%
	} else {
	%>
	<div align="center">
		<h4 style="color: white">Car details unavailable</h4>
	</div>
	<%
	}
	%>
</main>
</body>
</html>