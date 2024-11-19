<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.UserBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile Update</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        color: #333;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    form {
        background: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        width: 300px;
    }
    input[type="text"] {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 10px;
        cursor: pointer;
        border-radius: 4px;
        width: 100%;
        font-size: 16px;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<%
String fName = (String) request.getAttribute("fname");
UserBean ub = (UserBean) application.getAttribute("ubean");
out.println("Page belongs to user: " + fName + "<br>");
%>
<form action="update" method="post">     
    <label for="city">City:</label>
    <input type="text" id="city" name="city" value="<%= ub.getCity() %>"><br>
    <label for="mid">Mail ID:</label>
    <input type="text" id="mid" name="mid" value="<%= ub.getmId() %>"><br>
    <label for="phNo">Phone No:</label>
    <input type="text" id="phNo" name="phNo" value="<%= ub.getPhNo() %>"><br>
    <input type="submit" value="Update Profile">
</form>
</body>
</html>
