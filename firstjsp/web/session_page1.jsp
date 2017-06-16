<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: localhost
  Date: 17-5-27
  Time: 下午4:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session内置对象</title>
</head>
<body>
    <h1>session内置对象</h1>
    <hr>
    <%
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
        Date d = new Date(session.getCreationTime());
        session.setAttribute("username","admin");
        session.setAttribute("password","123456");
        session.setAttribute("age","20");

        //设置session保持时间为10秒
        //session.setMaxInactiveInterval(10);
    %>
    session创建时间：<%= sdf.format(d) %><br />

    session的ID编号：<%= session.getId() %><br />
    session中获取用户名：<%= session.getAttribute("username")%><br />
    <a href="session_page2.jsp" target="_blank">跳转到session_page2.jsp</a>
</body>
</html>
