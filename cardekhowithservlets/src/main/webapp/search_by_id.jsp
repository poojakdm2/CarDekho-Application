<%@page import="com.jspiders.cardekhowithservlets.object.Car"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search By ID</title>
<style type="text/css">
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
        #form{
        margin-left: 550px;
        margin-top: 50px;
        }
        input {
            width: 300px;
            height: 30px;
            margin-top: 100px;
            margin: 15px auto;
            margin-left: 50px;
            border: none;
            outline: none;
            text-align: center;
            background-color: black;
            border-bottom: 3px solid white;
            color: white;
        }
       #btn {
            border-radius: 20px;
            width: 150px;
            margin-left: 130px;
            box-shadow: 0px 0px 0px 2px white;
            margin-top: 30px;
            height: 40px;
            color: white;
            cursor: pointer;
        }
	
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
width: 300xp;
margin-left:300px; 
margin-right: 300px;
}
  main header nav ul li a:hover{
         background-color: #7F00FF;
         }  
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
        <header>
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
        <br>
        <br>
        <br>
    <h1 style="color: white" align="center">Search Car By ID</h1>
    <form action="search_by_id" method="get" id="form">
       
        
        <input type="text" id="id" name="id" style="color: white;" placeholder="Enter the car id here" required="required">
        <br>
        <button type="submit" id="btn">Search</button>
    </form>
    <h1>Car Details</h1>
    <% 
    Car car = (Car) request.getAttribute("car");
    if (car != null) { 
    %>
    <div id="tab">
    <table border="2px solid white" id="">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Brand</th>
            <th>Price</th>
        </tr>
        <tr>
            <td><%= car.getId() %></td>
            <td><%= car.getName() %></td>
            <td><%= car.getBrand() %></td>
            <td>$ <%= car.getPrice() %></td>
        </tr>
    </table>
    </div>
    <% } else { %>
    <p style="color: white;" align="center"><%= request.getAttribute("ErrorMessage") %></p>
    <% } %> 
    </main> 
</body>
</html>