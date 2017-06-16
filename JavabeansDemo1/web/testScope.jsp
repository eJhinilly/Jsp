<%@ page import="com.po.Users" %><%--
  Created by IntelliJ IDEA.
  User: localhost
  Date: 17-6-2
  Time: 下午2:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Javabean的四个作用域范围</title>
</head>
<body>
    <h1>Javabean的四个作用域范围</h1>
    <hr>
    <jsp:useBean id="myUsers" class="com.po.Users" scope="page" />
    用户名：<jsp:getProperty name="myUsers" property="username" /><br />
    密码：<jsp:getProperty name="myUsers" property="password" /><br />

    <hr>
    <!--使用内置对象获取用户名和密码-->

    <!--page仅在当前页有效-->

    用户名：<%= ((Users) (request.getAttribute("myUsers"))).getUsername() %><br />
    密码：<%= ((Users) (request.getAttribute("myUsers"))).getPassword() %><br />

    <%--用户名：<%= ((Users) (session.getAttribute("myUsers"))).getUsername() %><br />--%>
    <%--密码：<%= ((Users) (session.getAttribute("myUsers"))).getPassword() %><br />--%>

    <%--用户名：<%= ((Users) (application.getAttribute("myUsers"))).getUsername() %><br />--%>
    <%--密码：<%= ((Users) (application.getAttribute("myUsers"))).getPassword() %><br />--%>
</body>
</html>
