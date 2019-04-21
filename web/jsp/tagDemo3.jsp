<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/21/19
  Time: 11:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--在jsp页面中导入自定义标签库 --%>
<%@taglib uri="/crab179" prefix="gacl" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>控制jsp页面是否执行</title>
</head>

<body>
<h1>jsp页面的内容1</h1>
<%--在jsp页面中使用自定义标签 demo2标签是不带标签体的--%>
<gacl:demo2/>
<h1>jsp页面的内容2</h1>
</body>
</html>