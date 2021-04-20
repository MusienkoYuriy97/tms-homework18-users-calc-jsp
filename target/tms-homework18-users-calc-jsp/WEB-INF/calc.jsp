<%--
  Created by IntelliJ IDEA.
  User: 97mus
  Date: 19.04.2021
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/calc" method="post">
    <input type="number" name = "num1" placeholder="Num1">
    <input type="number" name = "num2" placeholder="Num2">
    <input type="text" name = "command" placeholder="Command">
    <button>Submit</button>
</form>
${requestScope.result}
</body>


</html>
