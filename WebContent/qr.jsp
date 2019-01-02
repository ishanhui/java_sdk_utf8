<%@ page import="cn.ishanhui.sdk.ApiResult" %>
<%@ page import="cn.ishanhui.sdk.ApiCaller" %>
<%@ page import="cn.ishanhui.sdk.Util" %>
<%
/**
 *功能：扫码支付交易执行页面
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
<title>扫码支付</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/qrcode.js"></script>
</head>
<body>
<%
	// 提取请求参数
	Map<String, String> params = Util.getRequestParams(request);
	
	// 调获取二维码接口
	ApiResult ret = ApiCaller.getQrCodeUrl(params);
	Util.write(ret, out);
	String qrCodeUrl = ret.get("qrCodeUrl"); // 二维码链接，成功时有值
	out.println("<br/>二维码url：" + qrCodeUrl);
	
	// 以下代码用于将qrCodeUrl转为二维码图片，仅供参考
	if (ret.isSuccess()) {
%>
<script>
$(function() {
    var qr = qrcode(10, 'M');
    qr.addData('<%=qrCodeUrl%>');
    qr.make();
    $('#qrCode').html(qr.createImgTag(3, 3)).show();
});
</script>
<% } %>

<div id="qrCode" style="text-align: left;margin-top: 20px;margin-left: 20px;">&nbsp;</div>
</body>
</html>