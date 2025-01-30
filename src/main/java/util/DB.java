package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB {
  private static final String Url = "jdbc:mysql://localhost:3307/homework_jdbc";
  private static final String User = "root";
  private static final String Password = "";
  
  public static Connection getConnection() throws SQLException{
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(Url, User, Password);
    } catch (ClassNotFoundException e) {
      throw new SQLException("MySQL JDBC Driver not found", e);
    }
  }
}
