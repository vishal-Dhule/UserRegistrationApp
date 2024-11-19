<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.UserBean"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <% 
        UserBean ub = (UserBean) application.getAttribute("ubean");
        if (ub != null) {
        %>
            <h1>Welcome, <span class="username"><%= ub.getuName() %></span></h1>
            <nav class="menu">
                <a href="view" class="btn">View Profile</a>
                <a href="Logout" class="btn logout">Logout</a>
            </nav>
        <% 
        } else { 
        %>
            <p>User is not logged in.</p>
        <% 
        } 
        %>
    </div>
</body>
</html>
