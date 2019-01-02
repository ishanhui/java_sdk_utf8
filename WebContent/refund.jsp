<%@ page import="cn.ishanhui.sdk.ApiResult" %>
<%@ page import="cn.ishanhui.sdk.ApiCaller" %>
<%@ page import="cn.ishanhui.sdk.Util" %>
<%
/* *
 *功能：订单退款接口
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
<title>退款</title>
</head>
<body>
<%
    //原交易订单号,商户网站系统中，原交易订单号
	String payTradeNo = "test_170827170244409819";
	
	//退款流水号，商户网站系统中的退款流水号，要求唯一性
	String outTradeNo = String.valueOf(System.currentTimeMillis());
	
	//退款金额，单位元，需要退款的金额，累计退款金额不能超过订单支付金额
	String refundMoney = "1";
	
	//把请求参数打包成数组 
	Map<String, String> params = new HashMap<>();
	params.put("outTradeNo", outTradeNo);      //退款流水号，商户网站系统中的退款流水号，要求唯一性
	params.put("payTradeNo", payTradeNo);      //商户网站系统中，原交易订单号
	params.put("refundMoney", refundMoney);    //退款金额，需要退款的金额，累计退款金额不能超过订单支付金额
	// 调用退款接口
	ApiResult ret = ApiCaller.refund(params);
    Util.write(ret, out);
%>
	
</body>
</html>