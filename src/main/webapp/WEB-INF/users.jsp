<%--
  Created by IntelliJ IDEA.
  User: 97mus
  Date: 19.04.2021
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/users" method="post">
    <button>Show all users</button>
</form>
${requestScope.list}
</body>
</html>
