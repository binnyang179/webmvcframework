<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/20/19
  Time: 3:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
    <form action="" method="post">
        <input type="hidden" name="submitFlag" value="login" />
        username:<input type="text" name="username" value="${user.username}"/><br/>
        password:<input type="text" name="password" /><br/>
        <input type="submit" value="login"/>
    </form>
</body>
</html>
