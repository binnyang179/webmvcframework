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
    用户名：<input type="text" name="username"><br/>
    密码：<input type="password" name="password"><br/>
    <input type="submit" value="登陆">
</form>
</body>
</html>
