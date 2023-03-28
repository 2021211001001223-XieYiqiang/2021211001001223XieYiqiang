<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%@include file="header.jsp"%>
Welcome to my home page
<h1><%= "2021211001001223XiYiqiang"%></h1>
<br/>
<%-- get is def--%>
<form method="POST">
    Username :<input type="text" name="username"><br/>
    Password :<input type="password" name="password"><br/>
    <input type="submit" value="POST">
</form>
<%@include file="footer.jsp"%>
</body>
</html>