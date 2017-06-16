<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: localhost
  Date: 17-5-27
  Time: 下午5:08
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
%>


session的ID编号：<%= session.getId() %><br />
session中获取用户名：<%= session.getAttribute("username")%><br />
session中保存的属性有：<%
                    String[] names = session.getValueNames();
                    for(String name: names){
                        out.println(name+"&nbsp;&nbsp;");
                    }
%><br />
<!--<a href="session_page2.jsp" target="_blank">跳转到session_page2.jsp</a>-->
</body>
</html>
