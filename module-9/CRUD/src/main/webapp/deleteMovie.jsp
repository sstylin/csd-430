<%@ page import="com.example.MovieBean" %> <!-- Importing the MovieBean class for movie operations -->
<%
    MovieBean movieBean = new MovieBean(); // Creating an instance of MovieBean to access its methods
    String movieIdStr = request.getParameter("movieId"); // Retrieving the movieId parameter from the request
    if (movieIdStr != null) { // Checking if the movieId parameter is not null
        int movieId = Integer.parseInt(movieIdStr); // Parsing the movieId string to an integer
        movieBean.deleteMovie(movieId); // Delete the selected movie using the deleteMovie method
        response.sendRedirect("movieList.jsp?message=Movie deleted successfully."); // Redirecting to movieList.jsp with a success message
    } else {
        response.sendRedirect("movieList.jsp?message=No movie selected."); // Redirecting to movieList.jsp with an error message if no movieId is provided
    }
%>
