package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String DB_URL = "jdbc:mysql://localhost:3307/homework_jdbc"; 
    private static final String DB_USER = "root"; 
    private static final String DB_PASSWORD = "";  

    // Get database connection
    public static Connection getConnection() throws SQLException {
        try {
            // Ensure the JDBC driver is loaded
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Return a new connection to the database
            return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            throw new SQLException("Failed to create the database connection.");
        }
    }
}
