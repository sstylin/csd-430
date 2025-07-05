<%@ page import="java.util.List" %> <!-- Importing the List interface from the java.util package -->
<%@ page import="com.example.MovieBean" %> <!-- Importing the MovieBean class from the com.example package -->
<%@ page import="com.example.Movie" %> <!-- Importing the Movie class from the com.example package -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %> <!-- Setting the content type to HTML with UTF-8 encoding and specifying the scripting language as Java -->
<html>
<head>
    <title>Select Movie to Update</title> <!-- Title of the web page -->
</head>
<body>
<h2>Select a Movie to Update</h2> <!-- Header for the form -->
<form action="updateMovie.jsp" method="post"> <!-- Form that submits data to updateMovie.jsp using POST method -->
    <select name="movieId"> <!-- Dropdown menu for selecting a movie -->
        <%
            MovieBean movieBean = new MovieBean(); // Creating an instance of MovieBean to access movie data
            List<Movie> movies = movieBean.getAllMovies(); // Retrieving the list of all movies from the MovieBean
            for (Movie movie : movies) { // Iterating through each movie in the list
        %>
            <option value="<%= movie.getId() %>"><%= movie.getTitle() %></option> <!-- Creating an option for each movie with its ID as the value and title as the display text -->
        <%
            }
        %>
    </select>
    <input type="submit" value="Select Movie"> <!-- Submit button to send the selected movie ID -->
</form>
</body>
</html>
