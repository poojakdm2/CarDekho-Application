package com.jspiders.cardekhowithservlets.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.cardekhowithservlets.jdbc.CarJDBC;
import com.jspiders.cardekhowithservlets.object.Car;
@WebServlet("/Search_by_Name")
public class SearchByName extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        
        List<Car> cars = CarJDBC.searchCarByName(name);
        
        if (cars.isEmpty()) {
            request.setAttribute("errorMessage", "No cars found with the name: " + name);
        } else {
            request.setAttribute("cars", cars);
        }
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("search_name.jsp");
        dispatcher.forward(request, response);
    }
}
