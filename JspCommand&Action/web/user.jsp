<%--
  Created by IntelliJ IDEA.
  User: localhost
  Date: 17-6-5
  Time: 上午11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户资料</title>
</head>
<body>
    <h1>用户资料</h1>
    <hr>

    <%
        request.setCharacterEncoding("utf-8");
        String username ="";
        String password ="";
        String email ="";
        if(request.getParameter("username")!=null){
            username=request.getParameter("username");
        }
        if(request.getParameter("password")!=null){
            password=request.getParameter("password");
        }
        if(request.getParameter("email")!=null){
            email=request.getParameter("email");
        }

    %>

    用户名：<%= username %><br />
    密码：<%= password %><br />
    电子邮箱：<%= email %><br />
</body>
</html>
