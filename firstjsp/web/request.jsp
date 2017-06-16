<%--
  Created by IntelliJ IDEA.
  User: localhost
  Date: 17-5-26
  Time: 下午4:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request对象</title>
</head>
<body>
    <h1>request内置对象</h1>
    <%--request.setCharacterEncoding("utf-8");--%>
    <%

        String username = request.getParameter("username");
        request.setAttribute("password","123456");
    %>

    用户名：<%= new String(username.getBytes("ISO-8859-1"),"UTF-8") %>
    <br />
    爱好：<%
            if(request.getParameterValues("favorites") != null) {
                String[] favorites = request.getParameterValues("favorites");
                for (String favorite : favorites) {
                    out.println(favorite + "&nbsp;&nbsp");
                }
            }
         %>
    密码：<%=request.getAttribute("password") %>
    <br />
    请求体的MIME类型：<%= request.getContentType() %><br />
    协议类型和版本号：<%= request.getProtocol() %><br />
    主机名：<%= request.getServerName() %><br />
    端口号：<%= request.getServerPort() %><br />
    请求客户端的IP地址：<%= request.getRemoteAddr() %>
</body>
</html>
