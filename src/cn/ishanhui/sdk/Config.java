package cn.ishanhui.sdk;

/* *
 *类名：Config
 *功能： 各参数配置类
 *版本：1.0
 *日期：2015-11-12
 *说明：本代码只是提供 调用实例，仅供学习与研究。用户可以参考完成各自正式业务逻辑。
 */

public class Config {

	//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
	// 商户id和密钥
	public static final String MERCHANT_ID = "11111111";
	public static final String KEY = "200A710CEABD4518AF9BC3A7A183B85D";
	//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
	
	// 字符编码格式 目前支持utf-8
	public static final String CHARSET = "UTF-8";

	/**
	 *  生产环境网关地址：https://api.ishanhui.cn
	 *  测试环境网关地址：http://test-api.tpddns.cn:81
	 */
	public static final String SERVICE_URL = "http://test-api.tpddns.cn:81";

	// 商户服务器地址
	public static final String PARTNER_URL = "http://127.0.0.1:92/sdk_java_utf8";
	
	// 同步通知地址，url中不要带参数
	public static final String RETURN_URL = PARTNER_URL + "/return.jsp";
	
	// 异步通知地址，url中不要带参数
	public static final String NOTIFY_URL = PARTNER_URL + "/notify.jsp";
}
