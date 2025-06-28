package com.example;

import java.sql.Date;

public class Movie {
    private int id;
    private String title;
    private String genres;
    private Date releaseDate;
    private double imdbRating;

    public Movie(int id, String title, String genres, Date releaseDate, double imdbRating) {
        this.id = id;
        this.title = title;
        this.genres = genres;
        this.releaseDate = releaseDate;
        this.imdbRating = imdbRating;
    }

    public int getId() { return id; }
    public String getTitle() { return title; }
    public String getGenres() { return genres; }
    public Date getReleaseDate() { return releaseDate; }
    public double getImdbRating() { return imdbRating; }
}
