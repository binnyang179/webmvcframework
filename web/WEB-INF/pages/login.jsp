<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/20/19
  Time: 5:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登陆</title>
</head>

<body>
<form action="${pageContext.request.contextPath }/servlet/LoginServlet" method="post">
    username：<input type="text" name="username"><br/>
    password：<input type="password" name="password"><br/>
    <input type="submit" value="login">
</form>
</body>
</html>
