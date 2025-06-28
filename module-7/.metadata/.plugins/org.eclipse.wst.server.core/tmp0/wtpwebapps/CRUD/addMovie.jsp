<%@ page import="java.sql.*" %>
<%@ page import="java.math.BigDecimal" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New Movie</title>
</head>
<body>
    <h1>Add New Movie</h1>
    <form action="addMovie.jsp" method="post">
        <label for="title">Title:</label>
        <input type="text" name="title" id="title" required><br><br>

        <label for="genres">Genres:</label>
        <input type="text" name="genres" id="genres"><br><br>

        <label for="release_date">Release Date:</label>
        <input type="date" name="release_date" id="release_date" required><br><br>

        <label for="imdb_rating">IMDB Rating:</label>
        <input type="number" name="imdb_rating" id="imdb_rating" step="0.1" min="0" max="10" required><br><br>

        <input type="submit" value="Add Movie">
    </form>

    <%
        // Handle form submission
        String title = request.getParameter("title"); // Retrieve the movie title from the form
        String genres = request.getParameter("genres"); // Retrieve the movie genres from the form
        String releaseDate = request.getParameter("release_date"); // Retrieve the release date from the form
        String imdbRating = request.getParameter("imdb_rating"); // Retrieve the IMDB rating from the form

        if (title != null && !title.isEmpty()) {
            // Database connection parameters
            String url = "jdbc:mysql://localhost:3306/csd430"; // Database URL
            String user = "student1"; // Database username
            String password = "pass"; // Database password
            Connection conn = null; // Initialize connection variable
            PreparedStatement pstmt = null; // Initialize prepared statement variable

            try {
                Class.forName("com.mysql.cj.jdbc.Driver"); // Load MySQL JDBC driver
                conn = DriverManager.getConnection(url, user, password); // Establish database connection
                String sql = "INSERT INTO steve_movies_data (title, genres, release_date, imdb_rating) VALUES (?, ?, ?, ?)"; // SQL insert statement
                pstmt = conn.prepareStatement(sql); // Prepare the SQL statement
                pstmt.setString(1, title); // Set the title parameter
                pstmt.setString(2, genres); // Set the genres parameter
                pstmt.setDate(3, Date.valueOf(releaseDate)); // Set the release date parameter
                pstmt.setBigDecimal(4, new BigDecimal(imdbRating)); // Set the IMDB rating parameter
                pstmt.executeUpdate(); // Execute the insert operation
                out.println("<p>Movie added successfully!</p>"); // Output success message
            } catch (Exception e) {
                out.println("<p>Error adding movie: " + e.getMessage() + "</p>"); // Output error message
            } finally {
                if (pstmt != null) try { pstmt.close(); } catch (SQLException ignore) {} // Close prepared statement
                if (conn != null) try { conn.close(); } catch (SQLException ignore) {} // Close database connection
            }
        }
    %>
    <br>
    <a href="index.jsp">Back to Welcome</a>
    <p><a href="displayAllMovies.jsp">Display all movies recorded</a>
</body>
</html>

