<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
        margin-top:-85px;
            margin-left: 44%;
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
         main header nav ul li a:hover{
         background-color: #7F00FF;
         }
        
        #form {
            height: 450px;
            width: 400px;


            box-shadow: 0px 0px 0px 1px white;
            margin: 30px auto;
            border: 1px solid;



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
            border-bottom: 1px solid white;
            color: white;
        }

        input[type="submit"] {
            border-radius: 20px;
            width: 150px;
            margin-left: 130px;
            box-shadow: 0px 0px 0px 2px white;
            margin-top: 30px;
            height: 40px;
            cursor: pointer;
        }
        
        
         input[type="submit"]:hover {
	background-color: green;
	color: white;
}
main header nav ul li a:hover{
         background-color: #7F00FF;
         }
        
         input[type="submit"]:hover {
	background-color: green;
	color: white;
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
                        <li><a href="">Update Car</a></li>
                    </ul>

                </div>

            </nav>
        </header>
<h1>Update Car Details</h1>
    <div id="form">
    <form action="./update" method="post">
        <br>
        <input type="text" id="carId" name="carId" placeholder="Enter Car ID" required="required">
        <br>
        <br>
        
        <input type="text" id="newName" name="newName" placeholder=" Enter New Car  Name" required="required">
        <br>
        <br>
        
        <input type="text" id="newBrand" name="newBrand" placeholder="Enter New Brand Name" required="required">
        <br>
        <br>
        
        <input type="text" id="newPrice" name="newPrice" placeholder="Enter New Price" required="required">
        <br>
        
        <input type="submit" value="Update Details">
    </form>
     <% 
    String message = (String) request.getAttribute("message");
    String errorMessage = (String) request.getAttribute("errorMessage");
    
    if (message != null) { 
    %>
    <p style="color: white" align="center"><%= message %></p>
    <% } else if (errorMessage != null) { %>
    <p style="color: white" align="center"><%= errorMessage %></p>
    <% } %>
    </div>
   </main>
</body>
</html>