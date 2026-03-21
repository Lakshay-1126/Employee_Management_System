package com.ems.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	public boolean validate(String name, String email,String password) {
		boolean check = false;
		String URL = "jdbc:mysql://localhost:3306/employee_management_system";
		String username = "root";
		String userpass = "1234";
		final String READDATA = "select * from admin_details where name = ? and email=? and password=?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(URL, username, userpass);
			PreparedStatement pstmt = con.prepareStatement(READDATA);
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.setString(3, password);
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
