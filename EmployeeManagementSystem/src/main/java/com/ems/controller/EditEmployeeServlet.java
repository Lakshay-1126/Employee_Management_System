package com.ems.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ems.dao.EmployeeDAO;
import com.ems.dto.Employee;

@WebServlet("/EditEmployeeServlet")
public class EditEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        Employee e = new Employee();
        e.setId(Integer.parseInt(req.getParameter("id")));
        e.setName(req.getParameter("name"));
        e.setEmail(req.getParameter("email"));
        e.setSalary(Double.parseDouble(req.getParameter("salary")));
        e.setDepartment(req.getParameter("department"));

        EmployeeDAO.update(e);
        res.sendRedirect("viewEmployees.jsp");
    }
}