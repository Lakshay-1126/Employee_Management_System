package com.ems.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ems.dao.LoginEmpDao;

@WebServlet("/LoginEmpServlet")
public class LoginEmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Accept the request data
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		LoginEmpDao dao = new LoginEmpDao();
		if(dao.validate(name, email)) {
			 out.println("<!DOCTYPE html>");
			 out.println("<html>");
		     out.println("<head>");
		     out.println("<title>Welcome Employee</title>");
		     out.println("</head>");
		     out.println("<body style='font-family:Arial; background:#f2f2f2;'>");

		     out.println("<div style='width:50%; margin:100px auto; background:white; padding:30px; border-radius:10px; box-shadow:0 0 10px gray;'>");

		     out.println("<h2 style='text-align:center; color:#2c3e50;'>Welcome to Employee Management System</h2>");
		     out.println("<hr>");

		     out.println("<p style='font-size:18px;'>Hello <b>"+name+"</b>,</p>");
		     out.println("<p>We are glad to have you on board.</p>");

		     out.println("</div>");
		     out.println("</body>");
		     out.println("</html>");
		    
		}
		else {
			out.print("Invalid username or password try again");
			RequestDispatcher rd = request.getRequestDispatcher("login_emp.html");
			rd.include(request, response);
		}
	}

}
