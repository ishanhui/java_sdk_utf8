<%
/**
 *功能：扫码支付发起页面
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
</head>
<body>
<form action="qr.jsp" method="post">
    <table>
        <tr>
            <td><label for="payType">支付方式：</label></td>
            <td><input type="text" name="payType" id="payType" value="10"/> 支付方式（扫码支付填写）</td>
        </tr>
        <%@ include file="base_order_data.jsp" %>

    </table>
</form>
</body>
</html>