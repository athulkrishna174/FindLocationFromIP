package com.findlocation.controller;

import java.io.IOException;

import com.findlocation.model.Location;
import com.findlocation.service.FindLocationService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/findLocation")
public class FindLocation extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ipAddress = request.getParameter("ipAddress");
		
		FindLocationService locationService = new FindLocationService();
		
		
		Location location = locationService.getLocation(ipAddress);
		
		if(location.getResponse().equalsIgnoreCase("ok")) {
			
			request.setAttribute("location", location);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("ipDetails.jsp");
			
			dispatcher.forward(request, response);
			
			return;
		}
		else {
			response.sendRedirect("findLocation.jsp");
			return;
		}
		
	}
}
