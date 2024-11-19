<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RegSuccess</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        color: #333;
        margin: 20px;
    }
    .message {
        margin: 10px 0;
        padding: 10px;
        background-color: #e0f7fa;
        border: 1px solid #00796b;
        color: #00796b;
        border-radius: 5px;
    }
</style>
</head>
<body>
<%
String msg = (String) request.getAttribute("msg");
if (msg != null) {
%>
    <div class="message"><%= msg %></div>
<%
}
%>
<%@include file="login.html" %>
</body>
</html>
