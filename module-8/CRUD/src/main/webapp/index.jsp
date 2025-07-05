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
    <h1>Project Documents</h1>
    <ul>
        <!-- Replace the items below with the actual paths to your Word documents -->
        <li><a href="documents/Stylin__movies_data.docx">Module 5.1 Documentation</a></li> <!-- Link to Module 5.2 documentation -->
         <li><a href="documents/Stylin_module6_database_connection.docx">Module 6.1 Documentation</a></li> <!-- Link to Module 6.2 documentation -->
         <li><a href="documents/Stylin_module7_part2.docx">Module 7.2 Documentation</a></li> <!-- Link to Module 7.2 documentation -->
          <li><a href="documents/Stylin_module_8part_3.docx">Module 8.2 Documentation</a></li> <!-- Link to Module 8.2 documentation -->
    </ul>
    
    <h1> Project Part I</h1>
    <h3>Movies in the database</h3>
    <a href="displayAllMovies.jsp">Database Movies List</a> <!-- Display all movies recorded in the database -->

    <h3>Select a Movie</h3>
    <p><a href="selectMovie.jsp">Click here to select a movie</a></p> <!-- Link to the movie selection page -->
    
     <h1> Project Part II</h1>
    <h3>Add a New Movie</h3>
    <p><a href="addMovie.jsp">Click here to add a new movie</a></p> <!-- Link to the add movie page -->
    
    <h1>Project Part III</h1>
    <h3>Select a movie to update</h3>
    <p><a href="selectupdate.jsp">Click to select and update a movie</a></p> <!-- Link to the update movie page -->
    
    <footer>
        <p>Author: Steve Stylin</p> <!-- Displaying the author's name -->
        
        <p>School: Bellevue University</p> <!-- Displaying the school name -->
        <p>Professor: Darrell Payne</p> <!-- Displaying the professor's name -->
    </footer>
</body>
</html>
