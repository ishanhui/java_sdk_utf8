<%@ page import="cn.ishanhui.sdk.ApiResult" %>
<%@ page import="cn.ishanhui.sdk.ApiCaller" %>
<%@ page import="cn.ishanhui.sdk.Util" %>
<%
    /*
     * 功能：2.1 报关推送
     * 说明：以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己的实际情况，按照技术文档重新编写。
     */
%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>报关推送</title>
</head>
<body>
<%
    //支付单对应的请求流水号(支付接口对应的outTradeNo)
    String payTradeNo = "test_170827170244409819";

    //请求流水号，唯一标识该笔请求
    String outTradeNo = String.valueOf(System.currentTimeMillis());

    //把请求参数打包成数组
    Map<String, String> params = new HashMap<>();
    params.put("outTradeNo", outTradeNo);        //请求流水号，唯一标识该笔请求
    params.put("payTradeNo", payTradeNo);       //支付单对应的请求流水号(支付接口对应的outTradeNo)
    params.put("oriMchOrder", "test123");       //商户平台订单号
    params.put("goodsDesc", "测试订单");        //订单描述
    params.put("goodsNum", "1");                //商品数量
    params.put("payMoney", "100");              //支付金额，单位分（100表示1元）
    params.put("goodsMoney", "100");            //支付货款，单位分（100表示1元）
    params.put("freight", "0");                 //支付运费，单位分（100表示1元）
    params.put("tax", "0");                     //支付税款，单位分（100表示1元）
    params.put("customType", "");               //海关通道，参考《海关通道列表》
    params.put("customCode", "");               //海关编码，参考《海关代码表》
    params.put("ciqCode", "");                  //国检编码，参考《国检代码表》（需要上报国检时填写）
    params.put("note", "");                     //备注信息
    params.put("ip", "");                       //交易终端的IP地址
    // 调用接口
    ApiResult ret = ApiCaller.customReport(params);
    Util.write(ret, out);
%>

</body>
</html>