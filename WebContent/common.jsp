<%
/**
 *功能：公共参数页面
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究接口使用，只是提供一个参考。
 */
%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*"%>
<%@ page import="cn.ishanhui.sdk.*"%>
<%@ page import="cn.ishanhui.sdk.Config" %>
<%
//设置编码格式(UTF-8)
request.setCharacterEncoding(Config.CHARSET);
response.setContentType("text/html;charset=" + Config.CHARSET);
%>