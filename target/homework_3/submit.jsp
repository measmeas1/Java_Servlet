<%@ page import="com.example.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Submitted Data</title>
    <style> body { background-color: yellow; } </style>
</head>
<body>
    <h2>Submitted Data</h2>
    <%
        User user = (User) request.getAttribute("user");
    %>
    <p><b>Email:</b> <%= user.getEmail() %></p>
    <p><b>Password:</b> <%= user.getPassword() %></p>
    <p><b>Birthday:</b> <%= user.getBirthday() %></p>
    <p><b>New Student:</b> <%= user.isNewStudent() ? "Yes" : "No" %></p>
    <p><b>College:</b> <%= user.getCollege() %></p>
    <p><b>Major:</b> <%= user.getMajor() %></p>
    <p><b>Favorite Color:</b> <%= user.getFavoriteColor() %></p>
    <p><b>Terms Accepted:</b> <%= user.isTermsAccepted() ? "Yes" : "No" %></p>
</body>
</html>
