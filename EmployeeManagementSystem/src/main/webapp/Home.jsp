<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management System</title>
</head>

<body style="
    margin:0;
    padding:0;
    font-family:Arial, Helvetica, sans-serif;
    background:linear-gradient(120deg, #89f7fe, #66a6ff);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
">

    <div style="
        background:white;
        width:420px;
        padding:40px;
        border-radius:12px;
        box-shadow:0px 8px 25px rgba(0,0,0,0.2);
        text-align:center;
    ">

        <h2 style="
            margin-bottom:10px;
            color:#333;
        ">
            Employee Management System
        </h2>

        <p style="
            color:#666;
            font-size:14px;
            margin-bottom:30px;
        ">
            Manage employee records efficiently
        </p>

        <a href="addEmployee.jsp" style="
            display:block;
            text-decoration:none;
            background:#4CAF50;
            color:white;
            padding:12px;
            margin-bottom:15px;
            border-radius:6px;
            font-size:16px;
            font-weight:bold;
        ">
            ➕ Add Employee
        </a>

        <a href="viewEmployees.jsp" style="
            display:block;
            text-decoration:none;
            background:#2196F3;
            color:white;
            padding:12px;
            border-radius:6px;
            font-size:16px;
            font-weight:bold;
        ">
            📋 View Employees
        </a>

    </div>

</body>
</html>
