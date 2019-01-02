<%@ page import="cn.ishanhui.sdk.ApiResult" %>
<%@ page import="cn.ishanhui.sdk.ApiCaller" %>
<%@ page import="cn.ishanhui.sdk.Util" %>
<%
    /*
     * 功能：2.2 报关查询
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
    //把请求参数打包成数组
    Map<String, String> params = new HashMap<>();
    params.put("outTradeNo", "test145878314075");        //请求流水号

    // 调用接口
    ApiResult ret = ApiCaller.customQuery(params);
    Util.write(ret, out);
%>

</body>
</html>