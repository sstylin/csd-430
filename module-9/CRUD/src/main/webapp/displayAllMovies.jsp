<%@ page import="java.sql.*" %>
<%@ page import="java.math.BigDecimal" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Movies</title>
    <style>
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid black;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body style="background-color: #e0f7fa;">
	 <h1> Project Part I</h1>
    <h3>Movies in the database</h3>
    
    <table>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Genres</th>
            <th>Release Date</th>
            <th>IMDB Rating</th>
        </tr>
        <%
            // Database connection parameters
            String url = "jdbc:mysql://localhost:3306/csd430"; // URL for the MySQL database
            String user = "student1"; // Database username
            String password = "pass"; // Database password
            Connection conn = null; // Connection object
            Statement stmt = null; // Statement object
            ResultSet rs = null; // ResultSet object

            try {
                Class.forName("com.mysql.cj.jdbc.Driver"); // Load MySQL JDBC driver
                conn = DriverManager.getConnection(url, user, password); // Establish connection to the database
                stmt = conn.createStatement(); // Create a statement object to execute SQL queries
                String sql = "SELECT * FROM steve_movies_data"; // SQL query to select all movies
                rs = stmt.executeQuery(sql); // Execute the SQL query

                while (rs.next()) { // Iterate through the result set
                    int id = rs.getInt("id"); // Retrieve movie ID
                    String title = rs.getString("title"); // Retrieve movie title
                    String genres = rs.getString("genres"); // Retrieve movie genres
                    Date releaseDate = rs.getDate("release_date"); // Retrieve movie release date
                    BigDecimal imdbRating = rs.getBigDecimal("imdb_rating"); // Retrieve movie IMDB rating
        %>
                    <tr>
                        <td><%= id %></td>
                        <td><%= title %></td>
                        <td><%= genres %></td>
                        <td><%= releaseDate %></td>
                        <td><%= imdbRating %></td>
                    </tr>
        <%
                }
            } catch (Exception e) {
                out.println("<tr><td colspan='5'>Error loading movies: " + e.getMessage() + "</td></tr>"); // Display error message if an exception occurs
            } finally {
                if (rs != null) try { rs.close(); } catch (SQLException ignore) {} // Close ResultSet
                if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {} // Close Statement
                if (conn != null) try { conn.close(); } catch (SQLException ignore) {} // Close Connection
            }
        %>
    </table>
    <br>
    <a href="index.jsp">Back to Welcome</a>
    <br>
    <a href="addMovie.jsp">Add a new Movie to list?</a>
    <br>
</body>
</html>

