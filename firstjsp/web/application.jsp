<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: localhost
  Date: 17-5-31
  Time: 下午3:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>application内置对象</title>
</head>
<body>
      <h1>application</h1>
      <%
        application.setAttribute("city","北京");
        application.setAttribute("postcode","10000");
        application.setAttribute("email","lisi@126.com");
      %>
      所在城市是：<%=application.getAttribute("city") %><br />
      application中的属性有：<br /><%
          Enumeration attributes = application.getAttributeNames();
          while(attributes.hasMoreElements()){
              out.println(attributes.nextElement() + "&nbsp;&nbsp;<br />" );
          }
      %><br />
      JSP（SERVLET）引擎版本号：<%= application.getServerInfo() %>
</body>
</html>
