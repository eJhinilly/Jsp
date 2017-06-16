<%--
  Created by IntelliJ IDEA.
  User: localhost
  Date: 17-5-26
  Time: 下午3:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
    <hr />
    <form action="dologin.jsp" name="login" method="post" >
        <table>
            <tr>
                <td> 用户名：</td>
                <td> <input type="text" name="username" value="默认为111111" /></td>
            </tr>
            <tr>
                <td> 密码：</td>
                <td> <input type="password" name="password" value="默认为123456" /></td>
            </tr>
            <tr>
                <td colspan="2"> <input type="submit" value="登录" ></td>
            </tr>
        </table>
    </form>
</body>
</html>
