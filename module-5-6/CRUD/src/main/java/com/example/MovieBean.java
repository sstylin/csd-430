package com.example;

import java.sql.*;
import java.util.*;

public class MovieBean {
    private String jdbcURL = "jdbc:mysql://localhost:3306/csd430";
    private String jdbcUsername = "student1";
    private String jdbcPassword = "pass";

    public List<Movie> getAllMovies() {
        List<Movie> movies = new ArrayList<>();
        String sql = "SELECT * FROM steve_movies_data";

        try (Connection conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Movie movie = new Movie(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("genres"),
                        rs.getDate("release_date"),
                        rs.getDouble("imdb_rating")
                );
                movies.add(movie);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return movies;
    }

    public Movie getMovieById(int id) {
        String sql = "SELECT * FROM steve_movies_data WHERE id = ?";
        try (Connection conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new Movie(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("genres"),
                        rs.getDate("release_date"),
                        rs.getDouble("imdb_rating")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
