<%@ page import="com.example.MovieBean" %> <!-- Importing the MovieBean class to handle movie-related operations -->
<%@ page import="com.example.Movie" %> <!-- Importing the Movie class which represents a movie entity -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %> <!-- Setting the content type to HTML with UTF-8 encoding -->
<%
    int movieId = Integer.parseInt(request.getParameter("movieId")); // Retrieving the movieId from the request parameters and parsing it to an integer
    MovieBean movieBean = new MovieBean(); // Creating an instance of MovieBean to access movie data
    Movie movie = movieBean.getMovieById(movieId); // Fetching the movie details using the movieId
%>
<html>
<head>
    <title>Update Movie</title> <!-- Title of the webpage -->
</head>
<body>
<h2>Update Movie Details</h2> <!-- Header for the update form -->
<form action="displayUpdatedMovie.jsp" method="post"> <!-- Form to submit updated movie details to displayUpdatedMovie.jsp -->
    <input type="hidden" name="id" value="<%= movie.getId() %>"> <!-- Hidden input to store the movie ID -->
    <label>Title:</label>
    <input type="text" name="title" value="<%= movie.getTitle() %>"><br> <!-- Input field for the movie title, pre-filled with current title -->
    <label>Genres:</label>
    <input type="text" name="genres" value="<%= movie.getGenres() %>"><br> <!-- Input field for the movie genres, pre-filled with current genres -->
    <label>Release Date:</label>
    <input type="date" name="release_date" value="<%= movie.getReleaseDate() %>"><br> <!-- Input field for the release date, pre-filled with current release date -->
    <label>IMDB Rating:</label>
    <input type="text" name="imdb_rating" value="<%= movie.getImdbRating() %>"><br> <!-- Input field for the IMDB rating, pre-filled with current rating -->
    <input type="submit" value="Update Movie"> <!-- Submit button to update the movie details -->
</form>
<p>Change your mind? back to the Welcome page</p> <!-- Prompt for the user to navigate back to the welcome page -->
<a href="index.jsp">Back to Welcome</a> <!-- Link to redirect to the welcome page -->
</body>
</html>
