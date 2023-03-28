<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<html>
<head>
    <title>register user</title>
    <link rel="stylesheet" href="CSS/register.css"/>
</head>
<body>
<script>
    function validateForm() {
        // Get the form elements
        var username = document.forms["myForm"]["username"].value;
        var password = document.forms["myForm"]["password"].value;
        var email = document.forms["myForm"]["email"].value;
        var birthdate = document.forms["myForm"]["birthdate"].value;

        // Validate the username
        if (username == "") {
            alert("Username is required");
            return false;
        }

        // Validate the password
        if (password == "") {
            alert("Password is required");
            return false;
        } else if (password.length < 8) {
            alert("Password must be at least 8 characters long");
            return false;
        }

        // Validate the email
        var emailRegex = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
        if (email == "") {
            alert("Email is required");
            return false;
        } else if (!emailRegex.test(email)) {
            alert("Invalid email address");
            return false;
        }

        // Validate the birthdate
        var birthdateRegex = /^\d{4}-\d{2}-\d{2}$/;
        if (birthdate == "") {
            alert("Birthdate is required");
            return false;
        } else if (!birthdateRegex.test(birthdate)) {
            alert("Birthdate must be in the yyyy-dd-mm format");
            return false;
        }

        // If all validation passes, return true
        return true;
    }
</script>
This is my register JSP page
<form method="post" name="myForm" action="RegisterServlet" onsubmit="return validateForm()">
    <label>Username:</label><input type="text" name="username"/><br>
    Password:<input type="password" name="password"/><br>
    Email:<input type="text" name="email"/><br>
    <div class="radio-group">
        <input type="radio" id="male" name="gender" value="Male">
        <label for="male">Male</label>
        <input type="radio" id="female" name="gender" value="Female">
        <label for="female">Female</label>
    </div>
    Birthday:<input type="text" name="birthdate"/><br>
    <input type="submit" value="Login"/><br>
</form>
</body>
</html>
<%@include file="footer.jsp"%>
