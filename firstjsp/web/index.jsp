<%--
  Created by IntelliJ IDEA.
  User: localhost
  Date: 17-5-24
  Time: 上午9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%
  Locale local = request.getLocale();
  Calendar calendar = Calendar.getInstance(local);
  int hour = calendar.get(Calendar.HOUR_OF_DAY);
  String greeting ="";
  if(hour <= 6){
    greeting="凌晨好，你是否该睡觉了，长时间熬夜对身体不好";
  }
  else if (hour <= 9){
    greeting="早晨好，工作时应该注意保护眼睛";
  }
  else if (hour <= 12){
    greeting="上午好，小心工作中打瞌睡";
  }
  else if (hour <= 18){
    greeting="下午好，小心工作中打瞌睡，现在是特别累的时间";
  }else if (hour <= 24){
    greeting="晚上好，好好放松自己，工作一天了，要早点休息";
  }
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0.1 Transitional//EN">
<html>
  <head>
    <title>欢迎页面</title>
  </head>
  <body>
  <table>
    <tr>
      <td><%= greeting %>别闹了</td>
    </tr>
  </table>
  <%
  out.println("这里是jsp脚本");
  %>
  </body>
</html>
