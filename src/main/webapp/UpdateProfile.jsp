<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <!-- Inline CSS Styles -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
            text-align: center;
        }

        p {
            font-size: 1.2rem;
            color: #555;
            text-align: center;
        }

        .actions {
            text-align: center;
            margin-top: 20px;
        }

        .actions a {
            color: #007BFF;
            text-decoration: none;
            font-size: 1.1rem;
        }

        .actions a:hover {
            color: #0056b3;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>User Profile</h1>
        
        <%
            String fName = (String) request.getAttribute("fname");
            String msg = (String) request.getAttribute("msg");
            
            // Check if fname attribute is available
            if (fName != null) {
                out.println("<p>Welcome, " + fName + "!</p>");
            } else {
                out.println("<p>User not logged in or no name found.</p>");
            }
            
            // Optionally display a message if it exists
            if (msg != null && !msg.isEmpty()) {
                out.println("<p>" + msg + "</p>");
            } else {
                out.println("<p>No messages to display.</p>");
            }
        %>
        
        <div class="actions">
            <a href="view">View Profile</a> | 
            <a href="logout">Logout</a>
        </div>
    </div>
</body>
</html>
