<%@ page import="java.sql.*" %> <!-- Importing SQL package for database operations -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %> <!-- Setting content type and language for the JSP page -->
<html>
<head>
    <title>Select a Movie</title> <!-- Title of the web page -->
</head>
<body>
    <h1>Select Movie</h1> <!-- Main heading of the page -->

    <form action="displayMovie.jsp" method="post"> <!-- Form to submit selected movie ID -->
        <label for="movieId">Select Movie ID:</label> <!-- Label for the dropdown -->
        <select name="movieId" id="movieId"> <!-- Dropdown for selecting movie ID -->
            <%
                // Database connection parameters
                String url = "jdbc:mysql://localhost:3306/csd430"; // URL for the MySQL database
                String user = "student1"; // Database username
                String password = "pass"; // Database password
                Connection conn = null; // Connection object to connect to the database
                Statement stmt = null; // Statement object to execute SQL queries
                ResultSet rs = null; // ResultSet object to hold the results of the query
               

                Exception e = null; // Variable to hold any exceptions that occur
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver"); // Load MySQL JDBC driver
                    conn = DriverManager.getConnection(url, user, password); // Establish connection to the database
                    stmt = conn.createStatement(); // Create a statement object
                    String sql = "SELECT id FROM steve_movies_data"; // SQL query to select movie IDs
                    rs = stmt.executeQuery(sql); // Execute the query and store the results

                    if (!rs.isBeforeFirst()) { // Check if the ResultSet is empty
                        out.println("<option value=''>No movies available</option>"); // Display message if no movies are found
                    } else {
                        while (rs.next()) { // Iterate through the ResultSet
                            int movieId = rs.getInt("id"); // Retrieve movie ID from the current row
            %>
                            <option value="<%= movieId %>"><%= movieId %></option> <!-- Create an option for each movie ID -->
            <%
                        }
                    }
                } catch (Exception ex) {
                    e = ex; // Assign the caught exception to e
                    out.println("<option value=''>Error loading movies</option>"); // Display error message if an exception occurs
                    
                    // Print stack trace to HTML for debugging (development only)
                    java.io.StringWriter sw = new java.io.StringWriter(); // Create a StringWriter to capture the stack trace
                    java.io.PrintWriter pw = new java.io.PrintWriter(sw); // Create a PrintWriter to write the stack trace
                    e.printStackTrace(pw); // Print the stack trace to the PrintWriter
                    out.println("<pre>" + sw.toString() + "</pre>"); // Output the stack trace to the HTML
                } finally {
                    // Close resources to prevent memory leaks
                    if (rs != null) try { rs.close(); } catch (SQLException ignore) {} // Close ResultSet if not null
                    if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {} // Close Statement if not null
                    if (conn != null) try { conn.close(); } catch (SQLException ignore) {} // Close Connection if not null
                }
            %>
        </select>
        <br><br>
        <input type="submit" value="Display Movie"> <!-- Submit button to display selected movie -->
    </form>
</body>
</html>
