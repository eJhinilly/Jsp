<%--
  Created by IntelliJ IDEA.
  User: localhost
  Date: 17-6-5
  Time: 上午11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:forward page="user.jsp" >
        <jsp:param name="email" value="admin@123.net" />
        <jsp:param name="password" value="888888" />
    </jsp:forward>
</body>
</html>
