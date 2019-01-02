<%
/**
 *功能：网银支付发起页面
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
<form action="ebank.jsp" method="post">
    <table>
        <tr>
            <td><label for="payType">支付方式：</label></td>
            <td><input type="text" name="payType" id="payType" value="30"/></td>
        </tr>
        <tr>
            <td><label for="bankNo">银行编号：</label></td>
            <td><input type="text" name="bankNo" id="bankNo" value="ICBC"/> 银行编号，参见接口文档银行编号列表</td>
        </tr>
        <tr>
            <td><label for="cardType">卡类型：</label></td>
            <td><input type="text" name="cardType" id="cardType" value="1"/> 卡类型: 1-借记卡，2-贷记卡（信用卡）</td>
        </tr>
        <tr>
            <td><label for="userType">用户类型：</label></td>
            <td><input type="text" name="userType" id="userType" value="1"/> 用户类型：1-个人，2-企业</td>
        </tr>

        <%@ include file="base_order_data.jsp" %>
    </table>
</form>
</body>
</html>