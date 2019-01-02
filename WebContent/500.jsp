<%
/**
 *功能：500错误处理页面
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究接口使用，只是提供一个参考。
 */
%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% String sysname = "Mixpay Open Api"; %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title><%=sysname%></title>
</head>
<body>
<h2>出错了</h2>
错误详情: <%=response.toString()%>
</body>
</html>