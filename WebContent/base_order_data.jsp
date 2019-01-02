<%@ page import="cn.ishanhui.sdk.Util" %>
<%@page pageEncoding="UTF-8"%>
<tr>
    <td><label for="outTradeNo">订单号：</label></td>
    <td><input type="text" name="outTradeNo" id="outTradeNo" value="<%=Util.createOrderId()%>"/>  商户网站的订单号</td>
</tr>
<tr>
    <td><label for="payMoney">支付金额(分)：</label></td>
    <td><input type="text" name="payMoney" id="payMoney" value="10" /></td>
</tr>
<tr>
    <td><label for="goodsDesc">商品描述：</label></td>
    <td><input type="text" name="goodsDesc" id="goodsDesc" value="测试商品" /></td>
</tr>
<tr>
    <td><label for="ip">终端ip：</label></td>
    <td><input type="text" name="ip" id="ip" value="127.0.0.1"/></td>
</tr>
<tr>
    <td><label for="buyerName">买家姓名 ：</label></td>
    <td><input type="text" name="buyerName" id="buyerName" value="张三"/></td>
</tr>
<tr>
    <td><label for="buyerCertNo">买家18位身份证号 ：</label></td>
    <td><input type="text" name="buyerCertNo" id="buyerCertNo" value="510901197502176549"/></td>
</tr>
<tr>
    <td><label for="buyerPhone">买家手机号 ：</label></td>
    <td><input type="text" name="buyerPhone" id="buyerPhone" value="13100001111"/></td>
</tr>
<tr>
    <td colspan="2"><button type="submit">下单</button></td>
</tr>