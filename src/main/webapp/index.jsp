<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>School Form</title>
</head>
<body>
    <form action="/homework_3/submitForm" method="post">
        Email: <input type="email" name="email" required><br>
        Password: <input type="password" name="password" required><br>
        Birthday: <input type="date" name="birthday"><br>
        New Student? <input type="radio" name="newStudent" value="yes">Yes 
        <input type="radio" name="newStudent" value="no">No<br>
        College: <input type="text" name="college"><br>
        Major: <input type="text" name="major"><br>
        Favorite Color: <input type="color" name="favoriteColor"><br>
        Terms: <input type="checkbox" name="terms">I agree.<br>
        <input type="submit" value="Submit Form">
    </form>
</body>
</html>
