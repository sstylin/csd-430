<%@ page contentType="text/html;charset=UTF-8" language="java" %> <!-- Set the content type and language for the JSP page -->
<%@ page import="com.example.MovieBean" %> <!-- Import the MovieBean class for handling movie data -->
<%@ page import="com.example.Movie" %> <!-- Import the Movie class which represents a movie entity -->

<html>
<head>
    <title>Updated Movie Details</title> <!-- Title of the web page -->
</head>
<body>
<h2>Updated Movie Details</h2> <!-- Header for the movie details section -->
<table border="1"> <!-- Start of the table to display movie details -->
    <tr>
        <th>ID</th> <!-- Column header for Movie ID -->
        <th>Title</th> <!-- Column header for Movie Title -->
        <th>Genres</th> <!-- Column header for Movie Genres -->
        <th>Release Date</th> <!-- Column header for Movie Release Date -->
        <th>IMDB Rating</th> <!-- Column header for Movie IMDB Rating -->
    </tr>
    <tr>
        <%
        MovieBean movieBean = new MovieBean(); // Create an instance of MovieBean to manage movie data
        int id = Integer.parseInt(request.getParameter("id")); // Retrieve and parse the movie ID from the request
        String title = request.getParameter("title"); // Retrieve the movie title from the request
        String genres = request.getParameter("genres"); // Retrieve the movie genres from the request
        java.sql.Date releaseDate = java.sql.Date.valueOf(request.getParameter("release_date")); // Convert the release date from string to java.sql.Date
        double imdbRating = Double.parseDouble(request.getParameter("imdb_rating")); // Parse the IMDB rating from the request

        Movie movie = new Movie(id, title, genres, releaseDate, imdbRating); // Create a new Movie object with the retrieved data
        movieBean.updateMovie(movie); // Call to update the movie in the database
        %>
        <td><%= id %></td> <!-- Display the movie ID in the table -->
        <td><%= title %></td> <!-- Display the movie title in the table -->
        <td><%= genres %></td> <!-- Display the movie genres in the table -->
        <td><%= releaseDate %></td> <!-- Display the movie release date in the table -->
        <td><%= imdbRating %></td> <!-- Display the movie IMDB rating in the table -->
    </tr>
</table>
	<p>
	 <a href="index.jsp">Back to Welcome</a> <!-- Link to navigate back to the welcome page -->
	</p>
</body>
</html>
