<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Logout</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }
    .logout-message {
        color: #333;
        font-size: 20px;
        margin-bottom: 20px;
    }
    .login-container {
        text-align: center;
    }
</style>
</head>
<body>
<div class="logout-message">
    <%
    out.println("User Logged Out Successfully...<br>");
    %>
</div>
<div class="login-container">
    <%@include file="login.html" %>
</div>
</body>
</html>
