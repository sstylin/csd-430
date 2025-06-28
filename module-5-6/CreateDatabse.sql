--Steve Stylin, Module 5 and 6, SQLfile

-- Database credentials
-- static final String DB_URL = "jdbc:mysql://localhost:3306/"; -- URL for the database connection
-- static final String USER = "student1"; -- Database username
-- static final String PASS = "pass"; -- Database password

-- Drop the database if it exists
DROP DATABASE IF EXISTS csd430; -- SQL command to drop the database if it exists

-- Create database
CREATE DATABASE csd430; -- SQL command to create a new database

-- Use the new database
USE csd430; -- Set the context to the newly created database

-- Create table
CREATE TABLE steve_movies_data ( -- SQL command to create a new table
    id INT NOT NULL AUTO_INCREMENT, -- Define 'id' column as an auto-incrementing integer
    title VARCHAR(255) NOT NULL, -- Define 'title' column as a non-null string
    genres VARCHAR(255), -- Define 'genres' column as a string
    release_date DATE, -- Define 'release_date' column as a date
    imdb_rating DECIMAL(3,1), -- Define 'imdb_rating' column as a decimal
    PRIMARY KEY (id) -- Set 'id' as the primary key
); -- End of table creation

-- Insert values into the table
INSERT INTO steve_movies_data (title, genres, release_date, imdb_rating) VALUES 
    ('300: Rise of an Empire', 'Action, Drama', '2014-03-07', 6.2),
    ('Non-Stop', 'Action, Mystery, Thriller', '2014-02-28', 6.9),
    ('Son of God', 'Biography, Drama, History', '2014-02-28', 5.7),
    ('Noah', 'Action, Adventure, Drama', '2014-03-28', 5.8),
    ('12 Years a Slave', 'Biography, Drama, History', '2013-11-08', 8.1),
    ('The Passion of the Christ', 'Drama', '2004-02-25', 7.3),
    ('Need for Speed', 'Action, Crime, Drama, Thriller', '2014-03-14', 6.4),
    ('Lone Survivor', 'Action, Biography, Drama, War', '2014-01-10', 7.5),
    ('RoboCop', 'Action, Crime, Sci-Fi, Thriller', '2014-02-12', 6.1),
    ('Captain America: The Winter Soldier', 'Action, Adventure, Sci-Fi, Thriller', '2014-04-04', 7.7); -- End of insert values
