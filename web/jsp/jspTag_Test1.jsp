<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/21/19
  Time: 9:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="xdp" uri="/crab179" %>
<html>
<head>
    <title>putout client ip</title>
</head>
<body>
<p>your ip is (use java code output):</p>
    <%
        //in jsp page use java code get client ip
        String ip = request.getRemoteAddr();
        out.write(ip);
    %>
    <hr/>
    <p>your ip is (use self defined tag output):</p>
    <%-- use tag viewIP --%>
    <xdp:viewIP/>
</body>
</html>
