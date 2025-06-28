<%@ page import="java.util.List" %> <!-- Importing the List class from the java.util package -->
<%@ page import="com.example.MovieBean" %> <!-- Importing the MovieBean class from the com.example package -->
<%@ page import="com.example.Movie" %> <!-- Importing the Movie class from the com.example package -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %> <!-- Setting the content type to HTML with UTF-8 encoding -->
<!DOCTYPE html>
<html>
<head>
    <title>Document and Movie Selection</title>
      <style>
        body {
            background-color: #D3D3D3; <!-- Setting the background color of the body to light gray -->
        }
    </style>
</head>
<body>
    <h1>Word Document List</h1>
    <ul>
        <!-- Replace the items below with the actual paths to your Word documents -->
        <li><a href="documents/Stylin__movies_data.docx">Module 5.1 Documentation</a></li> <!-- Link to Module 5.1 documentation -->
         <li><a href="documents/Stylin_module6_database_connection.docx">Module 6.1 Documentation</a></li> <!-- Link to Module 5.1 documentation -->
    </ul>

    <h2>Select a Movie</h2>
    <p><a href="selectMovie.jsp">Click here to select a movie</a></p> <!-- Link to the movie selection page -->
    <footer>
        <p>Author: Steve Stylin</p> <!-- Displaying the author's name -->
        <p>Modules 5 and 6 Assignment - Project Part 1</p> <!-- Description of the assignment -->
        <p>School: Bellevue University</p> <!-- Displaying the school name -->
        <p>Professor: Darrell Payne</p> <!-- Displaying the professor's name -->
    </footer>
</body>
</html>
