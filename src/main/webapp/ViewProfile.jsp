<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.UserBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Information</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 20px;
        background-color: #f9f9f9;
    }
    h1 {
        color: #333;
    }
    .user-details {
        margin: 20px 0;
        padding: 10px;
        border: 1px solid #ccc;
        background-color: #fff;
        border-radius: 5px;
    }
    .user-details a {
        color: #007bff;
        text-decoration: none;
    }
    .user-details a:hover {
        text-decoration: underline;
    }
    .logout {
        margin-top: 20px;
        display: inline-block;
        padding: 10px 20px;
        background-color: #ff4d4d;
        color: white;
        text-decoration: none;
        border-radius: 5px;
    }
    .logout:hover {
        background-color: #e60000;
    }
</style>
</head>
<body>
<%
    String fName = (String)request.getAttribute("fname");
    UserBean ub = (UserBean)application.getAttribute("ubean");
%>
<h1>Welcome, <%= fName %>!</h1>
<div class="user-details">
    <p>
        <strong>User Details:</strong><br>
        <%= ub.getfName() %> &nbsp; <%= ub.getlName() %> &nbsp; 
        <%= ub.getCity() %> &nbsp; <%= ub.getmId() %> &nbsp; 
        <%= ub.getPhNo() %> &nbsp; 
        <a href="edit">Edit</a>
    </p>
</div>
<a href="Logout.jsp" class="logout">Logout</a>
</body>
</html>
