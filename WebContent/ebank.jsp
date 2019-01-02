<%@ page import="cn.ishanhui.sdk.ApiCaller" %>
<%@ page import="cn.ishanhui.sdk.Util" %>
<%
/**
 *功能：网银支付后台处理页面
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究接口使用，只是提供一个参考。
 */
%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>网银支付</title>
</head>
<body>
<%
	// 提取请求参数
	Map<String, String> params = Util.getRequestParams(request);
	
	// 调获网银支付接口获取页面跳转信息
	String formHtml = ApiCaller.createEbankRedirectForm(params);
	out.write(formHtml);
%>

</body>
</html>