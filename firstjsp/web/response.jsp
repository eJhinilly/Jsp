<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: localhost
  Date: 17-5-27
  Time: 上午11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    response.setContentType("text/html;charset=utf-8");//设置响应的MIME类型

    out.println("<h1>response内置对象</h1>");
    out.println("<hr>");
    //out.flush();

    PrintWriter outer = response.getWriter();//获得输出流对象
    outer.println("大家好，我是response对象生成的输出流outer对象");
    //response.sendRedirect("reg.jsp");//请求重定向
    //response.sendRedirect("request.jsp");//请求重定向本质上为两次请求
    request.getRequestDispatcher("request.jsp").forward(request,response);
    //请求一次，转发后请求对象会保存，url不会变
%>
