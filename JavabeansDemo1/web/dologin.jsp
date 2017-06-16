<%--
  Created by IntelliJ IDEA.
  User: localhost
  Date: 17-6-2
  Time: 上午9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<html>
<head>
    <title>setProperty动作元素</title>
</head>
<body>
    <jsp:useBean id="myUsers" class="com.po.Users" scope="page" />
    <h1>setProperty动作元素</h1>
    <hr>
    <!--根据表单提交的name自动匹配Users类的属性，如果匹配到，那么就把表单提交的值
        传递给setter方法-->
    <%--<jsp:setProperty name="myUsers" property="*" />--%>

    <!--根据表单匹配部分属性-->
    <%--<jsp:setProperty name="myUsers" property="username" />--%>

    <!--跟表单无关，通过手工赋值给属性-->
    <%--<jsp:setProperty name="myUsers" property="username" value="lisan" />--%>

    <!--通过URL传递参数给属性赋值-->
    <jsp:setProperty name="myUsers" property="username" />
    <jsp:setProperty name="myUsers" property="password" param="mypassword" />

    <!--使用传统表达式获取用户名密码-->
    <%--用户名：<%= myUsers.getUsername() %>--%>
    <%--密码： <%= myUsers.getPassword() %>--%>

    <!--使用getProperty获取用户名密码-->
    用户名：<jsp:getProperty name="myUsers" property="username" /><br />
    密码：<jsp:getProperty name="myUsers" property="password" /><br />
    <br />
    <br />
        <a href="testScope.jsp">javabean的四个作用域范围</a>
    <%
        request.getRequestDispatcher("testScope.jsp").forward(request,response);
    %>

</body>
</html>