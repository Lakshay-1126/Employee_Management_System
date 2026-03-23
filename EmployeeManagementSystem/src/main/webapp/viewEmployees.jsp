<%@ page import="java.util.*,com.ems.dao.EmployeeDAO,com.ems.dto.Employee" %>
<!DOCTYPE html>
<html>
<head>
<title>Employee List</title>
</head>

<body style="
    margin:0;
    padding:0;
    font-family:Arial, Helvetica, sans-serif;
    background:linear-gradient(120deg,#fdfbfb,#ebedee);
    min-height:100vh;
">

<div style="
    width:90%;
    margin:40px auto;
    background:white;
    padding:30px;
    border-radius:12px;
    box-shadow:0px 6px 20px rgba(0,0,0,0.15);
">

    <h2 style="
        text-align:center;
        color:#333;
        margin-bottom:25px;
    ">
        Employee List
    </h2>

    <table style="
        width:100%;
        border-collapse:collapse;
        text-align:center;
        font-size:14px;
    ">
        <tr style="background:#2196F3; color:white;">
            <th style="padding:12px;">ID</th>
            <th style="padding:12px;">Name</th>
            <th style="padding:12px;">Email</th>
            <th style="padding:12px;">Salary</th>
            <th style="padding:12px;">Department</th>
            <th style="padding:12px;">Action</th>
        </tr>

        <%
        List<Employee> list = EmployeeDAO.getAllEmployees();
        for(Employee e : list){
        %>

        <tr style="border-bottom:1px solid #ddd;">
            <td style="padding:10px;"><%=e.getId()%></td>
            <td style="padding:10px;"><%=e.getName()%></td>
            <td style="padding:10px;"><%=e.getEmail()%></td>
            <td style="padding:10px;">$ <%=e.getSalary()%></td>
            <td style="padding:10px;"><%=e.getDepartment()%></td>
            <td style="padding:10px;">
                <a href="editEmployee.jsp?id=<%=e.getId()%>" style="
                    text-decoration:none;
                    background:#4CAF50;
                    color:white;
                    padding:6px 12px;
                    border-radius:4px;
                    margin-right:5px;
                    font-size:13px;
                ">
                    Edit
                </a>

                <a href="DeleteEmployeeServlet?id=<%=e.getId()%>" style="
                    text-decoration:none;
                    background:#f44336;
                    color:white;
                    padding:6px 12px;
                    border-radius:4px;
                    font-size:13px;
                ">
                    Delete
                </a>
            </td>
        </tr>

        <% } %>

    </table>

    <div style="text-align:center; margin-top:25px;">
        <a href="Home.jsp" style="
            text-decoration:none;
            background:#2196F3;
            color:white;
            padding:10px 20px;
            border-radius:6px;
            font-weight:bold;
        ">
             Back to Home
        </a>
    </div>

</div>

</body>
</html>
