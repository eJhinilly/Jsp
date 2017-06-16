<%--
  Created by IntelliJ IDEA.
  User: localhost
  Date: 17-6-1
  Time: 上午10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="exception.jsp" %>
<html>
<head>
    <title>测试异常页面</title>
</head>
<body>
    <h1>测试异常的页面</h1>
    <hr>

    <%
        System.out.println(100/0);//抛出运行时异常，算数异常
    %>
</body>
</html>
