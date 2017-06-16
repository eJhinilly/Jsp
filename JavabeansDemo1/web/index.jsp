<%@ page import="com.po.Users" %><%--
  Created by IntelliJ IDEA.
  Users: localhost
  Date: 17-6-1
  Time: 下午4:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>使用普通方式创建javabean实例</title>
  </head>
  <body>
    <%
      Users user = new Users();
      user.setUsername("admin");
      user.setPassword("123456");
    %>
    <h1>使用普通方式创建javabean实例</h1>
    <hr>
    用户名：<%= user.getUsername() %>
    密码： <%= user.getPassword() %>
  </body>
</html>
