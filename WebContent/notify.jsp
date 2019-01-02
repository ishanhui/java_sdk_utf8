<%@ page import="cn.ishanhui.sdk.ApiCaller" %>
<%@ page import="cn.ishanhui.sdk.Util" %>
<%
    /* *
     功能：异步通知页面
     说明：
     以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
     该代码仅供学习和研究支付平台接口使用，只是提供一个参考。

     //***********页面功能说明***********
     创建该页面文件时，请留心该页面文件中无任何HTML代码及空格。
     该页面不能在本机电脑测试，请到服务器上做测试。请确保通过外网可以访问该页面。
     如果没有收到该页面返回的 success 信息，支付平台会在24小时内按一定的时间策略重发通知
     //********************************
     * */
%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="common.jsp" %>
<%
    //请求参数列表
    Map<String, String> params = Util.getRequestParams(request);

    //验证签名
    if (!ApiCaller.validSign(params)) {
        // 如果签名验证失败 返回 fail,请不要修改或删除
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
    //返回success表示消息已收到，请不要修改或删除
    out.println("success");
%>
