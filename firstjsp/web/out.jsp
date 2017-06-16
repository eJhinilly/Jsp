<%--
  Created by IntelliJ IDEA.
  User: localhost
  Date: 17-5-26
  Time: 下午2:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>out对象</title>
</head>
<body>
    <h2>out内置对象</h2>
    <%
        out.println("窗前明月光"+"<br />");
        out.println("疑是地上霜"+"<br />");
        out.println("举头望明月"+"<br />");
        out.println("低头思故乡"+"<br />");
    %>
    缓冲区大小：<%= out.getBufferSize() %>byte<br />
    缓冲区剩余大小：<%= out.getRemaining() %>byte<br />
    是否自动清空缓冲区：<%= out.isAutoFlush() %><br />
</body>
</html>
