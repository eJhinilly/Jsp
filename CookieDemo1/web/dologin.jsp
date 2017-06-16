<%@ page language="java" import="java.util.*,java.net.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dologin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h1>登录成功</h1>
    <hr>
    <br>
    <br>
    <br>
    <%
        request.setCharacterEncoding("utf-8");

        //首先判断用户是否选择了记住登录状态
        //只实现了选中复选框时登录，未选中复选框时不保存cookie，也就不显示用户密码
        String[] isUseCookies = request.getParameterValues("isUseCookie");
        if(isUseCookies!=null && isUseCookies.length >0 ){

            for(String isUseCookie:isUseCookies){
                out.println(isUseCookie+"<br />");
            }

            //把用户名和密码保存在cookie里面,对中文用户名进行编码，否则cookie无法保存中文
            String username = URLEncoder.encode(request.getParameter("username"),"utf-8");
            String password = request.getParameter("password");

            Cookie usernameCookie = new Cookie("username",username);
            Cookie passwordCookie = new Cookie("password",password);

            //设置最大生存期限为10天，单位为秒
            usernameCookie.setMaxAge(864000);
            passwordCookie.setMaxAge(864000);
            //cookie被返回到客户端
            response.addCookie(usernameCookie);
            response.addCookie(passwordCookie);
        }
        else {
            Cookie[] cookies = request.getCookies();
            if(cookies != null && cookies.length >0){
                for(Cookie c: cookies){
                    if(c.getName().equals("username") || c.getName().equals("password")){
                        c.setMaxAge(0);//设置cookie失效
                        response.addCookie(c);//重新保存
                    }
                }
            }
        }
    %>

    <a href="users.jsp" target="_blank">查看用户信息</a>
    
  </body>
</html>
