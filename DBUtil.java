package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ResourceBundle;

public class DBUtil {

	private static ResourceBundle bundle=ResourceBundle.getBundle("resources/jdbc");
	private static String driver=bundle.getString("driver");
	private static String url=bundle.getString("url");
	private static String user=bundle.getString("user");
	private static String password=bundle.getString("password");
	private DBUtil() {}
	static {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public static Connection getConnection() throws SQLException {
		Connection conn=null;
		  conn=DriverManager.getConnection(url, user, password);		
		return conn;
	}
	public static void close(Connection conn,Statement stmt,ResultSet rs){
		if(rs!=null)
		{
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(stmt!=null)
		{
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn!=null)
		{
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}
	
}
