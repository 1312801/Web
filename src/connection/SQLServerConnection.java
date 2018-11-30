package connection;


import java.sql.*;
public class SQLServerConnection {
	
	public static Connection getConnection()  throws ClassNotFoundException, SQLException
	{
		String connectionUrl = "jdbc:sqlserver://localhost:1433;" +  
  		         "databaseName=Web;integratedSecurity=true;characterEncoding=utf8";  
  		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
  		System.out.println(connectionUrl);
  		Connection con = DriverManager.getConnection(connectionUrl);
  		return con;
	}

}
