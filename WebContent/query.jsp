<%@ page import="cn.ishanhui.sdk.ApiResult" %>
<%@ page import="cn.ishanhui.sdk.ApiCaller" %>
<%@ page import="cn.ishanhui.sdk.Util" %>
<%
/**
 *功能：1.9 订单支付结果查询
 *说明：以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己的实际情况，按照技术文档重新编写。
 *该代码仅供学习和研究接口使用，只是提供一个参考。
 */
%><%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="common.jsp"%>
<%
	// 商户订单号
    String outTradeNo = "test_181214224225535903";

	// 拼装参数
    Map<String,String> params = new HashMap<>();
    params.put("outTradeNo", outTradeNo);

    // 调用接口
    ApiResult ret = ApiCaller.queryOrder(params);
    Util.write(ret, out);
    out.println("<br/>支付状态：" + ret.get("payStatus"));
    out.println("<br/>支付日期：" + ret.get("payAt"));
    out.println("<br/>该笔交易在三方平台的支付流水号：" + ret.get("payOrderNo"));
%>