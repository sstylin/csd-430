package com.example;

// Steve Stylin  Module 5 and 6 part 1: Project

import java.sql.Connection; // Importing the Connection class for database connection
import java.sql.DriverManager; // Importing DriverManager to manage database connections
import java.sql.Statement; // Importing Statement for executing SQL statements
import java.sql.SQLException; // Importing SQLException for handling SQL exceptions

public class CreateDatabase {

    // Database credentials
    static final String DB_URL = "jdbc:mysql://localhost:3306/"; // URL for the database connection
    static final String USER = "student1"; // Database username
    static final String PASS = "pass"; // Database password
    
    public static void main(String[] args) {
        Connection conn = null; // Initialize connection variable
        Statement stmt = null; // Initialize statement variable
        
        try {
            // Register JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver"); // Load MySQL JDBC driver
            
            // Open a connection
            conn = DriverManager.getConnection(DB_URL, USER, PASS); // Establish connection to the database
            System.out.println("Connection established successfully."); // Confirm successful connection

            // Create statement
            stmt = conn.createStatement(); // Create a statement object for executing SQL queries
            
            // Drop the database if it exists
            String sql = "DROP DATABASE IF EXISTS csd430"; // SQL command to drop the database if it exists
            stmt.executeUpdate(sql); // Execute the SQL command
            
            // Create database
            sql = "CREATE DATABASE csd430"; // SQL command to create a new database
            stmt.executeUpdate(sql); // Execute the SQL command
            System.out.println("Database 'csd430' created successfully."); // Confirm database creation
            
            // Use the new database
            stmt.executeUpdate("USE csd430"); // Set the context to the newly created database
            
            // Create table
            sql = "CREATE TABLE steve_movies_data (" + // SQL command to create a new table
                  "id INT NOT NULL AUTO_INCREMENT, " + // Define 'id' column as an auto-incrementing integer
                  "title VARCHAR(255) NOT NULL, " + // Define 'title' column as a non-null string
                  "genres VARCHAR(255), " + // Define 'genres' column as a string
                  "release_date DATE, " + // Define 'release_date' column as a date
                  "imdb_rating DECIMAL(3,1), " + // Define 'imdb_rating' column as a decimal
                  "PRIMARY KEY (id))"; // Set 'id' as the primary key
            stmt.executeUpdate(sql); // Execute the SQL command
            System.out.println("Table 'steve_movies_data' created successfully."); // Confirm table creation
            
            // Insert values into the table
            String[] movieValues = { // Array of movie data to be inserted
                "('300: Rise of an Empire', 'Action, Drama', '2014-03-07', 6.2)",
                "('Non-Stop', 'Action, Mystery, Thriller', '2014-02-28', 6.9)",
                "('Son of God', 'Biography, Drama, History', '2014-02-28', 5.7)",
                "('Noah', 'Action, Adventure, Drama', '2014-03-28', 5.8)",
                "('12 Years a Slave', 'Biography, Drama, History', '2013-11-08', 8.1)",
                "('The Passion of the Christ', 'Drama', '2004-02-25', 7.3)",
                "('Need for Speed', 'Action, Crime, Drama, Thriller', '2014-03-14', 6.4)",
                "('Lone Survivor', 'Action, Biography, Drama, War', '2014-01-10', 7.5)",
                "('RoboCop', 'Action, Crime, Sci-Fi, Thriller', '2014-02-12', 6.1)",
                "('Captain America: The Winter Soldier', 'Action, Adventure, Sci-Fi, Thriller', '2014-04-04', 7.7)"
            };
            
            for (String value : movieValues) { // Loop through each movie value
                sql = "INSERT INTO steve_movies_data (title, genres, release_date, imdb_rating) VALUES " + value; // SQL command to insert movie data
                stmt.executeUpdate(sql); // Execute the SQL command
            }
            System.out.println("Table 'steve_movies_data' populated successfully!"); // Confirm table population

        } catch (SQLException se) { // Handle SQL exceptions
            se.printStackTrace(); // Print stack trace for debugging
        } catch (Exception e) { // Handle general exceptions
            e.printStackTrace(); // Print stack trace for debugging
        } finally {
            // Clean up environment
            try {
                if (stmt != null) stmt.close(); // Close statement if not null
                if (conn != null) conn.close(); // Close connection if not null
                System.out.println("Connection closed."); // Confirm connection closure
            } catch (SQLException se) { // Handle SQL exceptions during cleanup
                se.printStackTrace(); // Print stack trace for debugging
            }
        }
    }
}
