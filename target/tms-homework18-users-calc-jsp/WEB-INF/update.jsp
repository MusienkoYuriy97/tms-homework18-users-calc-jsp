<%--
  Created by IntelliJ IDEA.
  User: 97mus
  Date: 20.04.2021
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/update" method="post">
    <input type="password" name = "new_password" placeholder="new_password">
    <input type="password" name = "repeated_new_password" placeholder="repeated_new_password">
    <button>Submit</button>
</form>
${requestScope.message}
</body>
</html>
