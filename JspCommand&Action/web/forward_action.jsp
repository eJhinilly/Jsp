<%--
  Created by IntelliJ IDEA.
  User: jayson
  Date: 17-6-3
  Time: 下午10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Forward动作</title>
</head>
<body>
    <h1>Forward动作</h1>
    <hr>
    <%--<jsp:forward page="user.jsp"  />--%>
    <% request.getRequestDispatcher("user.jsp").forward(request,response); %>
</body>
</html>
