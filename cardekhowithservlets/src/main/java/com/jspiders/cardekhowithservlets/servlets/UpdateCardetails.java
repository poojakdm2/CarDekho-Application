package com.jspiders.cardekhowithservlets.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.cardekhowithservlets.jdbc.CarJDBC;
@WebServlet("/update")
public class UpdateCardetails extends HttpServlet{

	private static final long serialVersionUID = 1L;

@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int carId = Integer.parseInt(req.getParameter("carId"));
    String newName = req.getParameter("newName");
    String newBrand = req.getParameter("newBrand");
    long newPrice = Long.parseLong(req.getParameter("newPrice"));

   
    boolean success = CarJDBC.updateCarDetails(carId, newName, newBrand, newPrice);

    if (success) {
        req.setAttribute("message", "Car details updated successfully.");
    } else {
        req.setAttribute("errorMessage", "Car not found.");
    }

    RequestDispatcher requestDispatcher = req.getRequestDispatcher("update_car.jsp");
    requestDispatcher.forward(req, resp);
}

}
