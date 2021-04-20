<%--
  Created by IntelliJ IDEA.
  User: 97mus
  Date: 19.04.2021
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/reg" method="post">
    <input type="text" name = "username" placeholder="Username">
    <input type="text" name = "fname" placeholder="FirstName">
    <input type="text" name = "lname" placeholder="LastName">
    <input type="number" name = "age" placeholder="Age">
    <input type="password" name = "password" placeholder="Password">
    <button>Submit</button>
</form>
${requestScope.message}
</body>
</html>
