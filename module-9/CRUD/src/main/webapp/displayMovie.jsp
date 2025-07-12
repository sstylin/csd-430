<%@ page import="com.example.MovieBean" %>
<%@ page import="com.example.Movie" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Movie Details</title>
    <style>
        table {
            border-collapse: collapse;
            width: 50%;
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
<body>
    <h1>Movie Details</h1>
    <%
        String movieIdParam = request.getParameter("movieId");

        if (movieIdParam != null && !movieIdParam.isEmpty()) {
            try {
                int movieId = Integer.parseInt(movieIdParam);
                MovieBean movieBean = new MovieBean();
                Movie movie = movieBean.getMovieById(movieId);

                if (movie != null) {
    %>
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Genres</th>
                            <th>Release Date</th>
                            <th>IMDB Rating</th>
                        </tr>
                        <tr>
                            <td><%= movie.getId() %></td>
                            <td><%= movie.getTitle() %></td>
                            <td><%= movie.getGenres() %></td>
                            <td><%= movie.getReleaseDate() %></td>
                            <td><%= movie.getImdbRating() %></td>
                        </tr>
                    </table>
    <%
                } else {
                    out.println("<p>No movie found with ID: " + movieId + "</p>");
                }
            } catch (NumberFormatException e) {
                out.println("<p>Invalid movie ID format.</p>");
            }
        } else {
            out.println("<p>No movie ID provided.</p>");
        }
    %>
    <br>
    <a href="selectMovie.jsp">Back to Selection</a>
    <br>
    <a href="index.jsp">Back to Welcome</a>
    
</body>
</html>