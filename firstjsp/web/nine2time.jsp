<%--
  Created by IntelliJ IDEA.
  User: localhost
  Date: 17-5-26
  Time: 下午2:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<html>
<head>
    <title>九九乘法表</title>
</head>
<body>
    <%!  void printNine2(JspWriter out) throws Exception {
        for (int i = 1; i <= 9; i++) {
            for (int j = 1; j <= i; j++) {
                out.print(i + "*" + j + "=" + i*j +"&nbsp;&nbsp;&nbsp;&nbsp;");
            }
            out.print("<br />");
        }
    }%>
    <h2>九九乘法表</h2>
    <div><% printNine2(out); %></div>

</body>
</html>
