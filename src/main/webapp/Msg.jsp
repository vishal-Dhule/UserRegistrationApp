<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f9;
    }
    .message {
        color: #333;
        font-size: 18px;
        padding: 10px;
        margin: 20px;
        background-color: #e8f0fe;
        border: 1px solid #c1d8ff;
        border-radius: 5px;
        display: inline-block;
    }
</style>
</head>
<body>
<%
String msg =(String)request.getAttribute("msg");
if (msg != null) {
%>
    <div class="message">
        <%= msg %>
    </div>
<%
}
%>
<%@include file="login.html" %>
</body>
</html>
