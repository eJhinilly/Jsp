<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: jayson
  Date: 17-6-3
  Time: 下午10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Date d = new Date();
    SimpleDateFormat sdf  = new SimpleDateFormat();
    String s = sdf.format(d);
    out.println(s);
%>