package com.example; // Package declaration for the MovieBean class

import java.sql.*; // Importing SQL classes for database operations
import java.util.*; // Importing utility classes, specifically for List and ArrayList

public class MovieBean {
    //private String jdbcURL = "jdbc:mysql://localhost:3306/csd430"; // Database URL
    //private String jdbcUsername = "student1"; // Database username
    //private String jdbcPassword = "pass"; // Database password

    // Method to retrieve all movies from the database
    public List<Movie> getAllMovies() {
        List<Movie> movies = new ArrayList<>(); // List to hold Movie objects
        String sql = "SELECT id,title,genres, release_date,imdb_rating FROM steve_movies_data"; // SQL query to select all movies

        // Try-with-resources to ensure proper resource management
        try (Connection conn = DatabaseConnection.getConnection(); // Use DatabaseConnection
                PreparedStatement stmt = conn.prepareStatement(sql);
                ResultSet rs = stmt.executeQuery()) { // Executing the query and getting results

            // Iterating through the result set
            while (rs.next()) {
                // Creating a Movie object for each row in the result set
                Movie movie = new Movie(
                        rs.getInt("id"), // Getting movie ID
                        rs.getString("title"), // Getting movie title
                        rs.getString("genres"), // Getting movie genres
                        rs.getDate("release_date"), // Getting movie release date
                        rs.getDouble("imdb_rating") // Getting movie IMDb rating
                );
                movies.add(movie); // Adding the Movie object to the list
            }

        } catch (SQLException e) { // Catching SQL exceptions
            e.printStackTrace(); // Printing stack trace for debugging
        }

        return movies; // Returning the list of movies
    }

 // Method to retrieve a movie by its ID
    public Movie getMovieById(int id) {
        String sql = "SELECT id,title,genres, release_date,imdb_rating FROM steve_movies_data WHERE id = ?"; // SQL query to select a movie by ID
        try (Connection conn = DatabaseConnection.getConnection(); // Use DatabaseConnection
                PreparedStatement stmt = conn.prepareStatement(sql)) { // Preparing SQL statement

            stmt.setInt(1, id); // Setting the ID parameter in the SQL query
            try (ResultSet rs = stmt.executeQuery()) { // Executing the query and getting results
                if (rs.next()) { // Checking if a result was returned
                    // Creating and returning a Movie object from the result set
                    return new Movie(
                        rs.getInt("id"), // Getting movie ID
                        rs.getString("title"), // Getting movie title
                        rs.getString("genres"), // Getting movie genres
                        rs.getDate("release_date"), // Getting movie release date
                        rs.getDouble("imdb_rating") // Getting movie IMDb rating
                    );
                }
            }
        } catch (SQLException e) { // Catching SQL exceptions
            e.printStackTrace(); // Printing stack trace for debugging
        }
        return null; // Returning null if no movie was found
    }

    // Method to update an existing movie in the database
    public void updateMovie(Movie movie) {
        String sql = "UPDATE steve_movies_data SET title = ?, genres = ?, release_date = ?, imdb_rating = ? WHERE id = ?"; // SQL query to update a movie
        try (Connection conn = DatabaseConnection.getConnection(); // Use DatabaseConnection
                PreparedStatement stmt = conn.prepareStatement(sql)) { // Preparing SQL statement

            // Setting parameters for the SQL update query
            stmt.setString(1, movie.getTitle()); // Setting movie title
            stmt.setString(2, movie.getGenres()); // Setting movie genres
            stmt.setDate(3, new java.sql.Date(movie.getReleaseDate().getTime())); // Setting movie release date
            stmt.setDouble(4, movie.getImdbRating()); // Setting movie IMDb rating
            stmt.setInt(5, movie.getId()); // Setting movie ID for the WHERE clause
            stmt.executeUpdate(); // Executing the update

        } catch (SQLException e) { // Catching SQL exceptions
            e.printStackTrace(); // Printing stack trace for debugging
        }
    }

    // Method to delete a movie by its ID
    public void deleteMovie(int id) {
        String sql = "DELETE FROM steve_movies_data WHERE id = ?"; // SQL query to delete a movie
        try (Connection conn = DatabaseConnection.getConnection(); // Use DatabaseConnection
                PreparedStatement stmt = conn.prepareStatement(sql)) { // Preparing SQL statement
            stmt.setInt(1, id); // Setting the ID parameter
            stmt.executeUpdate(); // Executing the delete
        } catch (SQLException e) {
            e.printStackTrace(); // Handle exceptions
        }
    }
}
