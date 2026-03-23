<%@ page import="com.ems.dao.EmployeeDAO,com.ems.dto.Employee" %>

<%
int id = Integer.parseInt(request.getParameter("id"));
Employee e = EmployeeDAO.getEmployeeById(id);
%>

<!DOCTYPE html>
<html>
<head>
<title>Edit Employee</title>
</head>

<body style="
    margin:0;
    padding:0;
    font-family:Arial, Helvetica, sans-serif;
    background:linear-gradient(120deg,#cfd9df,#e2ebf0);
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
         Edit Employee
    </h2>

    <form action="EditEmployeeServlet" method="post">

        <input type="hidden" name="id" value="<%=e.getId()%>">

        <label style="font-weight:bold; color:#555;">Name</label>
        <input type="text" name="name" value="<%=e.getName()%>" style="
            width:100%;
            padding:10px;
            margin:8px 0 15px 0;
            border:1px solid #ccc;
            border-radius:6px;
            font-size:14px;
        ">

        <label style="font-weight:bold; color:#555;">Email</label>
        <input type="text" name="email" value="<%=e.getEmail()%>" style="
            width:100%;
            padding:10px;
            margin:8px 0 15px 0;
            border:1px solid #ccc;
            border-radius:6px;
            font-size:14px;
        ">

        <label style="font-weight:bold; color:#555;">Salary</label>
        <input type="text" name="salary" value="<%=e.getSalary()%>" style="
            width:100%;
            padding:10px;
            margin:8px 0 15px 0;
            border:1px solid #ccc;
            border-radius:6px;
            font-size:14px;
        ">

        <label style="font-weight:bold; color:#555;">Department</label>
        <input type="text" name="department" value="<%=e.getDepartment()%>" style="
            width:100%;
            padding:10px;
            margin:8px 0 25px 0;
            border:1px solid #ccc;
            border-radius:6px;
            font-size:14px;
        ">

        <input type="submit" value="Update Employee" style="
            width:100%;
            background:#4CAF50;
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
        <a href="viewEmployees.jsp" style="
            text-decoration:none;
            color:#2196F3;
            font-weight:bold;
        ">
             Back to Employee List
        </a>
    </div>

</div>

</body>
</html>
