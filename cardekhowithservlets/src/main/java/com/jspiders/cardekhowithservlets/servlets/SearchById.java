package com.jspiders.cardekhowithservlets.servlets;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.cardekhowithservlets.jdbc.CarJDBC;
import com.jspiders.cardekhowithservlets.object.Car;
@WebServlet("/search_by_id")

public class SearchById extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String carid=req.getParameter("id");
	if(carid !=null && !carid.isEmpty())
	{
	try {
		
			int caridp=Integer.parseInt(carid);
			Car car=CarJDBC.searchCarById(caridp);
		
		  if(car !=null)
		  {
			  req.setAttribute("car",car);
		  }else
		  {
			  req.setAttribute("ErrorMessage", "car not found with ID: "+caridp);
		  }
		
	} catch (NumberFormatException e) {
		req.setAttribute("errorMessage", "Invalid car ID: " );	
		
	}}
	else {
		req.setAttribute("errorMessage", "Please provide a car ID");
	}
	  RequestDispatcher requestDispatcher=req.getRequestDispatcher("search_by_id.jsp");
	  requestDispatcher.forward(req, resp);
	  
	}

}
