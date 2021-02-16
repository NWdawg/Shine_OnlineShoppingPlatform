package com.DD.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

/**
 * 
* @ClassName: DBConnection 
* @Description: TODO(数据库连接类DBConnection) 
* @author @mollyunfei
* @date 2018年7月24日 下午3:23:32 
*
 */
public class DBConnection {
	/**
	 * 
	* @Title: main 
	* @Description: TODO(测试数据库连接是否成功) 
	* @param @param args
	* @param @throws Exception    设定文件 
	* @return void    返回类型 
	* @throws
	 */
	public static void main(String[] args) throws Exception {
		DBConnection.getConnection();
	}
	
	
	/**
	 * 
	* @Title: getConnection 
	* @Description: TODO(获取数据库连接对象) 
	* @param @return
	* @param @throws Exception    设定文件 
	* @return Connection    返回类型 
	* @throws
	 */
	public static Connection getConnection() throws Exception{
		Properties properties = new Properties();
		InputStream inputStream = DBConnection.class.getResourceAsStream("db.properties");
		properties.load(inputStream);

		String driver = properties.getProperty("driver");
		String url = properties.getProperty("url");
		String user = properties.getProperty("user");
		String passwd = properties.getProperty("passwd");

		Class.forName(driver);
		Connection connection = DriverManager.getConnection(url, user, passwd);

		if (!connection.isClosed()) {
			System.out.println("数据库已经连接~");
		}

		return connection;
	}
	
}
