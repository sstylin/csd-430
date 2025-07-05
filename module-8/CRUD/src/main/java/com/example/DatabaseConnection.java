package com.example;
// A database connection test class.
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static String jdbcURL = "jdbc:mysql://localhost:3306/csd430";
    private static String jdbcUsername = "student1";
    private static String jdbcPassword = "pass";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
    }
}
