package com.ems.dao;

import java.sql.*;
import java.util.*;

import com.ems.dto.Employee;
import com.ems.util.DBConnection;

public class EmployeeDAO {

    public static int save(Employee e) {
        int status = 0;
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO employee(name,email,salary,department) VALUES(?,?,?,?)"
            );
            ps.setString(1, e.getName());
            ps.setString(2, e.getEmail());
            ps.setDouble(3, e.getSalary());
            ps.setString(4, e.getDepartment());

            status = ps.executeUpdate();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }

    public static List<Employee> getAllEmployees() {
        List<Employee> list = new ArrayList<>();
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM employee");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Employee e = new Employee();
                e.setId(rs.getInt("id"));
                e.setName(rs.getString("name"));
                e.setEmail(rs.getString("email"));
                e.setSalary(rs.getDouble("salary"));
                e.setDepartment(rs.getString("department"));
                list.add(e);
            }
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public static Employee getEmployeeById(int id) {
        Employee e = new Employee();
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "SELECT * FROM employee WHERE id=?"
            );
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                e.setId(rs.getInt("id"));
                e.setName(rs.getString("name"));
                e.setEmail(rs.getString("email"));
                e.setSalary(rs.getDouble("salary"));
                e.setDepartment(rs.getString("department"));
            }
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return e;
    }

    public static int update(Employee e) {
        int status = 0;
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "UPDATE employee SET name=?,email=?,salary=?,department=? WHERE id=?"
            );
            ps.setString(1, e.getName());
            ps.setString(2, e.getEmail());
            ps.setDouble(3, e.getSalary());
            ps.setString(4, e.getDepartment());
            ps.setInt(5, e.getId());

            status = ps.executeUpdate();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }

    public static int delete(int id) {
        int status = 0;
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "DELETE FROM employee WHERE id=?"
            );
            ps.setInt(1, id);
            status = ps.executeUpdate();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }
}
