package com.ems.controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.ems.dao.EmployeeDAO;
import com.ems.dto.Employee;

@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Employee e = new Employee();
        e.setName(request.getParameter("name"));
        e.setEmail(request.getParameter("email"));
        e.setSalary(Double.parseDouble(request.getParameter("salary")));
        e.setDepartment(request.getParameter("department"));

        EmployeeDAO.save(e);
        response.sendRedirect("viewEmployees.jsp");
    }
}
