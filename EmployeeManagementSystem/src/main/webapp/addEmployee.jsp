<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>
</head>

<body style="
    margin:0;
    padding:0;
    font-family:Arial, Helvetica, sans-serif;
    background:linear-gradient(120deg,#fdfbfb,#ebedee);
    min-height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
">

<div style="
    background:white;
    width:420px;
    padding:35px;
    border-radius:12px;
    box-shadow:0px 8px 25px rgba(0,0,0,0.2);
">

    <h2 style="
        text-align:center;
        color:#333;
        margin-bottom:25px;
    ">
        ➕ Add Employee
    </h2>

    <form action="EmployeeServlet" method="post">

        <label style="font-weight:bold; color:#555;">Name</label>
        <input type="text" name="name" required style="
            width:100%;
            padding:10px;
            margin:8px 0 15px 0;
            border:1px solid #ccc;
            border-radius:6px;
            font-size:14px;
        ">

        <label style="font-weight:bold; color:#555;">Email</label>
        <input type="text" name="email" required style="
            width:100%;
            padding:10px;
            margin:8px 0 15px 0;
            border:1px solid #ccc;
            border-radius:6px;
            font-size:14px;
        ">

        <label style="font-weight:bold; color:#555;">Salary</label>
        <input type="text" name="salary" required style="
            width:100%;
            padding:10px;
            margin:8px 0 15px 0;
            border:1px solid #ccc;
            border-radius:6px;
            font-size:14px;
        ">

        <label style="font-weight:bold; color:#555;">Department</label>
        <input type="text" name="department" required style="
            width:100%;
            padding:10px;
            margin:8px 0 25px 0;
            border:1px solid #ccc;
            border-radius:6px;
            font-size:14px;
        ">

        <input type="submit" value="Add Employee" style="
            width:100%;
            background:#2196F3;
            color:white;
            padding:12px;
            border:none;
            border-radius:6px;
            font-size:16px;
            font-weight:bold;
            cursor:pointer;
        ">
    </form>

    <div style="text-align:center; margin-top:20px;">
        <a href="Home.jsp" style="
            text-decoration:none;
            color:#2196F3;
            font-weight:bold;
        ">
            Back to Home
        </a>
    </div>

</div>

</body>
</html>
