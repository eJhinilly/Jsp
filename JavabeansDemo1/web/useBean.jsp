<%--
  Created by IntelliJ IDEA.
  Users: localhost
  Date: 17-6-1
  Time: 下午4:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>使用useBean方式创建javabean实例</title>
  </head>
  <body>
    <jsp:useBean id="myUsers" class="com.po.Users" scope="page" />
    <h1>使用useBean方式创建javabean实例</h1>
    <hr>
    用户名：<%= myUsers.getUsername() %>
    密码： <%= myUsers.getPassword() %>
  </body>
</html>
