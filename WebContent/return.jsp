<%@ page import="cn.ishanhui.sdk.ApiCaller" %>
<%@ page import="cn.ishanhui.sdk.Util" %>
<%
    /* *
     功能：支付平台服务器同步通知页面
     说明：
     以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
     该代码仅供学习和研究支付平台接口使用，只是提供一个参考。

     //***********页面功能说明***********
     该页面可在本机电脑测试
     可放入HTML等美化页面的代码、商户业务逻辑程序代码
     returnStr=true(表示交易属于来源于支付平台的订单);
     success(表示交易已经成功结束，可以对该交易做后续操作，如：分润、退款等);
     //********************************
     * */
%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>页面跳转同步通知页面</title>
</head>
<body>

<%
    //请求参数列表
    Map<String, String> params = Util.getRequestParams(request);

    //验证签名
    if (!ApiCaller.validSign(params)) {
        out.println("fail");
        return;
    }

    //判断该笔订单是否在商户网站中已经做过处理
    //如果没有做过处理，根据订单号（outTradeNo）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
    //请务必判断请求时的payMoney与通知时获取的payMoney 为一致的
    //如果有做过处理，不执行商户的业务程序
    if ("1".equals(params.get("payStatus"))) {//支付成功
        //商户系统的业务逻辑
    }
    //请商户自行处理页面内容
    out.println("同步通知校验成功");
%>
</body>
</html>