<%--
  Created by IntelliJ IDEA.
  User: localhost
  Date: 17-5-31
  Time: 下午5:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageContext内置对象</title>
</head>
<body>
    <h1>pageContext内置对象</h1>
    ID是：<%= pageContext.getSession().getId() %>
    用户名是：<%= pageContext.getSession().getAttribute("username")%>

    <%
      //pageContext.forward("reg.jsp");
      //跳转到注册页面
      pageContext.include("include.jsp");
    %>
</body>
</html>
