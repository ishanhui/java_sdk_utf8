───────
 代码文件结构
───────
※注意※
需要修改配置的文件是：
src/cn/ishanhui/sdk/Config.java

java_sdk_utf8
  │
  ├src┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈类文件夹
  │  │
  │  ├cn.ishanhui.sdk
  │  │  │
  │  │  ├Config.java┈┈┈┈┈┈┈┈┈基础配置类文件
  │  │  │
  │  │  ├HttpUtil.java┈┈┈┈┈┈┈┈HTTP工具类文件
  │  │  │
  │  │  ├ApiCaller.java┈┈┈┈┈┈┈ 调用平台接口类文件
  │  │  │
  │  │  └Util.java┈┈┈┈┈┈┈┈┈┈支付平台工具类文件
  │  │
  ├WebContent┈┈┈┈┈┈┈┈┈┈┈┈┈页面文件夹
  │  │
  │  ├ebank_index.jsp┈┈┈┈┈┈┈┈┈调用网银支付示例页面
  │  │
  │  ├qr_index.jsp┈┈┈┈┈┈┈┈┈┈ 调用扫码支付示例页面
  │  │
  │  ├query.jsp ┈┈┈┈┈┈┈┈┈┈┈ 查询支付结果示例页面
  │  │
  │  ├notify.jsp ┈┈┈┈┈┈┈┈┈┈┈支付结果异步通知页面文件
  │  │
  │  ├return.jsp ┈┈┈┈┈┈┈┈┈┈┈支付结果页面跳转同步通知文件
  │  │
  │  ├refund.jsp ┈┈┈┈┈┈┈┈┈┈┈调用退款结果示例页面
  │  │
  │  ├customReport.jsp ┈┈┈┈┈┈┈┈发起报关请求示例页面
  │  ├customQuery.jsp ┈┈┈┈┈┈┈┈ 查询报关结果示例页面
  │  │
  │  └WEB-INF
  │   	 │
  │      └lib（如果JAVA项目中包含这些架包，则不需要导入）
  │   	     │
  │   	     ├commons-codec-1.6.jar
  │   	     │
  │   	     ├commons-httpclient-3.0.1.jar
  │   	     │
  │   	     ├commons-logging-1.1.1.jar
  │   	     │
  │   	     ├dom4j-1.6.1.jar
  │   	     │
  │   	     └...
  │
  └README.txt ┈┈┈┈┈┈┈┈┈使用说明文本

