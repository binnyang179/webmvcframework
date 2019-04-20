<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/20/19
  Time: 2:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%--使用me.crab179.domain.CalculatorBean --%>
<jsp:useBean id="calcBeanTest" class="me.crab179.domain.CalculatorBean"/>
<%--接收用户输入的参数 --%>
<%--<jsp:setProperty name="calcBeanTest" property="*"/>--%>
<jsp:setProperty name="calcBeanTest" property="firstNum"/>
<jsp:setProperty name="calcBeanTest" property="secondNum"/>
<jsp:setProperty name="calcBeanTest" property="operator"/>
<%
    //使用CalculatorBean进行计算
    calcBeanTest.calculate();
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>使用【jsp+javabean开发模式】开发的简单计算器</title>
</head>

<body>
<br/>
计算结果是：
<jsp:getProperty name="calcBeanTest" property="firstNum"/>
<jsp:getProperty name="calcBeanTest" property="operator"/>
<jsp:getProperty name="calcBeanTest" property="secondNum"/>
=
<jsp:getProperty name="calcBeanTest" property="result"/>

<br/><hr> <br/>
<form action="${pageContext.request.contextPath}/jsp/calculator.jsp" method="post">
    <table border="1px">
        <tr>
            <td colspan="2">简单的计算器</td>
        </tr>
        <tr>
            <td>第一个参数</td>
            <td><input type="text" name="firstNum"></td>
        </tr>
        <tr>
            <td>运算符</td>
            <td><select name="operator">
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="*">*</option>
                <option value="/">/</option>
            </select></td>
        </tr>
        <tr>
            <td>第二个参数</td>
            <td><input type="text" name="secondNum"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="计算"></td>
        </tr>
    </table>
</form>
</body>
</html>