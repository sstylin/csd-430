<%@ page import="com.example.MovieBean" %> <!-- Importing the MovieBean class for movie operations -->
<%@ page import="java.util.List" %> <!-- Importing the List interface for handling collections of movies -->
<%@ page import="com.example.Movie" %> <!-- Importing the Movie class which represents a movie entity -->
<%
    MovieBean movieBean = new MovieBean(); // Creating an instance of MovieBean to access movie data
    List<Movie> movies = movieBean.getAllMovies(); // Fetch all movies from the database
    String message = request.getParameter("message"); // Retrieving any message parameter from the request for display
%>

<!DOCTYPE html>
<html>
<head>
    <title>Project Part IV</title> <!-- Title of the web page -->
    <style>
        body {
            background-color: #ffcccc; /* Setting a light red background color for the body */
        }
    </style>
    <script>
        function confirmDeletion() {
            return confirm("Are you sure you want to delete this movie? This action cannot be undone."); // Confirmation dialog for movie deletion
        }
    </script>
</head>
<body>
    <h1>Project Part IV</h1> <!-- Main heading of the page -->
    <form method="post" action="deleteMovie.jsp" onsubmit="return confirmDeletion();"> <!-- Form to delete a movie with confirmation -->
        <label for="movieSelect">Select a movie to delete:</label> <!-- Label for the movie selection dropdown -->
        <select name="movieId" id="movieSelect"> <!-- Dropdown for selecting a movie to delete -->
            <%
                for (Movie movie : movies) { // Iterating through the list of movies
                    out.println("<option value='" + movie.getId() + "'>" + movie.getTitle() + "</option>"); // Creating an option for each movie
                }
            %>
        </select>
        <input type="submit" value="Delete Movie"> <!-- Submit button to delete the selected movie -->
    </form>

    <%
        if (message != null) { // Checking if there is a message to display
            out.println("<p>" + message + "</p>"); // Displaying the message if it exists
        }
    %>

    <table border="1"> <!-- Table to display the list of movies -->
        <thead>
            <tr>
                <th>ID</th> <!-- Column header for movie ID -->
                <th>Title</th> <!-- Column header for movie title -->
                <th>Genres</th> <!-- Column header for movie genres -->
                <th>Release Date</th> <!-- Column header for movie release date -->
                <th>IMDb Rating</th> <!-- Column header for movie IMDb rating -->
            </tr>
        </thead>
        <tbody>
            <%
                if (movies.isEmpty()) { // Checking if the movies list is empty
                    out.println("<tr><td colspan='5'>No records found.</td></tr>"); // Displaying a message if no movies are found
                } else {
                    for (Movie movie : movies) { // Iterating through the list of movies to display them
                        out.println("<tr>"); // Starting a new table row
                        out.println("<td>" + movie.getId() + "</td>"); // Displaying the movie ID
                        out.println("<td>" + movie.getTitle() + "</td>"); // Displaying the movie title
                        out.println("<td>" + movie.getGenres() + "</td>"); // Displaying the movie genres
                        out.println("<td>" + movie.getReleaseDate() + "</td>"); // Displaying the movie release date
                        out.println("<td>" + movie.getImdbRating() + "</td>"); // Displaying the movie IMDb rating
                        out.println("</tr>"); // Ending the table row
                    }
                }
            %>
        </tbody>
    </table>
    <p>
        <a href="index.jsp">Back to Welcome</a> <!-- Link to navigate back to the welcome page -->
    </p>
</body>
</html>
