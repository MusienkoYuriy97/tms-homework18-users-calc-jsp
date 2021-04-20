<%--
  Created by IntelliJ IDEA.
  User: 97mus
  Date: 20.04.2021
  Time: 18:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/logout" method="post">
    <button>LogOut</button>
</form>
${requestScope.message}
</body>
</html>
