<%--
  Created by IntelliJ IDEA.
  User: 97mus
  Date: 19.04.2021
  Time: 21:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/signin" method="post">
    <input type="text" name = "username" placeholder="Username">
    <input type="password" name = "password" placeholder="Password">
    <button>Submit</button>
</form>
${requestScope.message}
</body>
</html>
