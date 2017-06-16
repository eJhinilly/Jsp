<%--
  Created by IntelliJ IDEA.
  User: localhost
  Date: 17-6-1
  Time: 上午10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>exception内置对象</title>
</head>
<body>
    <h1>exception内置对象</h1>
    <hr>

    异常消息是：<%=exception.getMessage() %><br />
    异常的字符串描述：<%= exception.toString() %>
</body>
</html>
