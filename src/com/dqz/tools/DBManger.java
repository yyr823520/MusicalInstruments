package com.dqz.tools;

import java.sql.*;

/**
 * @author fly
 * @create 2017-09-28 13:26
 * @desc 数据库连接类
 **/
public class DBManger {
private static final String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static final String url = "jdbc:sqlserver://localhost:1433;DatabaseName=MusicalInstruments";
	private static final String userName="sa";
	private static final String password="123@qwe";

	public static void closeAll(Connection connection,Statement statement ,ResultSet resultSet){

		if(resultSet!=null){
			try {
				resultSet.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(statement!=null){
			try {
				statement.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(connection!=null){
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 获得数据库连接对象
	 * @return Connection
	 * @author fly
	 */
	public static Connection getConnection(){
		Connection connection = null;
		try {
			//加载数据库驱动
			Class.forName(driver);
			//连接数据库
			connection = DriverManager.getConnection(url,userName,password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("无法加载驱动");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("无法连接数据库");
		}finally {
			return connection;
		}
	}


}
