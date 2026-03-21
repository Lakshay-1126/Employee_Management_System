package com.ems.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginEmpDao {
	public boolean validate(String name, String email) {
		boolean check = false;
		String URL = "jdbc:mysql://localhost:3306/employee_management_system";
		String username = "root";
		String userpass = "1234";
		final String READDATA = "select * from employee where name = ? and email=?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(URL, username, userpass);
			PreparedStatement pstmt = con.prepareStatement(READDATA);
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				check = true;
			} else {
				check = false;
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return check;
	}
}
