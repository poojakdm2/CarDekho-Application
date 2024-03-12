<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

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
        }

        main header nav ul li {
            display: inline-block;
            
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
        
        #form {
            height: 450px;
            width: 400px;


            box-shadow: 0px 0px 0px 1px white;
            margin: 50px auto;
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
        #logo{
        margin-left: 20px;
        margin-top: 20px;
        height: 20px;
        width: 30px;
        }
       #logo {
       
       border: 1px solid ;
       height: 30px;	
       
       }
       #logotxt
       {
       padding:10px;
         font-size: 30px;
       }
       #sec1
       {
       margin-top:20px;
       background-image:url("https://media-s3-us-east-1.ceros.com/forbes/images/2022/02/24/ce539a85cd141fd6e361ddf248bf993d/cars-cycle-8.gif");
        background-position:center;
        background-repeat:no-repeat;
        background-size:cover;
        background-color: white;
        height: 500px;
        width: 100%;
        
        
        
        
       }
       #sec2
   {
   background-color: rgb(255, 255, 0,0.3);
   color: white;
   font-size: 15px;
   }
       main header nav ul li a:hover{
         background-color: #7F00FF;
         }
        
         input[type="submit"]:hover {
	background-color: green;
	color: white;
        
    </style>
</head>
<body>
	<main>
        <header>
            <nav>
            
            
               <div id="one" >
               <div id="logo">
               <h1 style="color: white" id="logotxt">CARDEKHO</h1>
               </div>
                <div id="parent">
                
                    <ul>
                        <li><a href="http://localhost:8080/cardekhowithservlets/home.jsp">Home</a></li>
                        <li><a href="http://localhost:8080/cardekhowithservlets/add_car.jsp">AddCar</a></li>
                        <li><a href="http://localhost:8080/cardekhowithservlets/remove_car.jsp">Remove Car</a></li>
                        <li><a href="http://localhost:8080/cardekhowithservlets/search_cars">View Car</a></li>
                        <li><a href="http://localhost:8080/cardekhowithservlets/search_by_id.jsp">SearchById</a></li>
                        <li><a href=" http://localhost:8080/cardekhowithservlets/search_name.jsp">SearchByName</a></li>
                        <li><a href="http://localhost:8080/cardekhowithservlets/update_car.jsp">Update Car</a></li>
                    </ul>

                </div>
               </div>

            </nav>
        </header>
       <section id="sec1">
    
    </section>
    <section id="sec2">
    
    </section>
    

           
    </main>
    
    

</body>
    
</html>