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
            background-color: #8FBC8F; /* Setting the background color of the body to shiny black */
            color: #FFFFFF; /* Setting the text color to white for better contrast */
            font-family: Arial, sans-serif; /* Setting a clean font for readability */
        }
        .container {
            display: flex; /* Using flexbox to create a two-column layout */
            justify-content: space-between; /* Distributing space between columns */
            padding: 20px; /* Adding padding around the container */
        }
        .left-column {
            width: 30%; /* Setting the width of the left column */
            padding-right: 20px; /* Adding space between columns */
        }
        .right-column {
            width: 65%; /* Setting the width of the right column */
        }
        table {
            width: 100%; /* Making the table take the full width of the right column */
            border-collapse: collapse; /* Collapsing borders for a cleaner look */
        }
        th, td {
            border: 1px solid #FFFFFF; /* Adding white borders to table cells */
            padding: 10px; /* Adding padding inside table cells */
            text-align: left; /* Aligning text to the left */
        }
        th {
            background-color: #444444; /* Dark gray background for table headers */
        }
        .divider {
            height: 4px; /* Height of the dividing bar */
            background-color: #FFFFFF; /* Color of the dividing bar */
            margin: 20px 0; /* Margin above and below the dividing bar */
        }
        footer {
            margin-top: 20px; /* Adding space above the footer */
            text-align: center; /* Centering footer text */
        }
        h1 {
            text-align: center; /* Centering the header text */
        }
    </style>
</head>
<body>
    <h1>Welcome to CRUD Project</h1>
    <div class="divider"></div> <!-- Dividing bar -->
    <div class="container">
        <div class="left-column">
            <ul>
                <!-- Replace the items below with the actual paths to your Word documents -->
                <li><a href="documents/Stylin__movies_data.docx">Module 5.1 Documentation</a></li>
                <li><a href="documents/Stylin_module6_database_connection.docx">Module 6.1 Documentation</a></li>
                <li><a href="documents/Stylin_module7_part2.docx">Module 7.2 Documentation</a></li>
                <li><a href="documents/Stylin_module_8part_3.docx">Module 8.2 Documentation</a></li>
                <li><a href="documents/Stylin_module9_part4.docx">Module 9.2 Documentation</a></li>
            </ul>
        </div>
        <div class="right-column">
            <table>
                <tr>
                    <th>Project Parts</th>
                    <th>Links</th>
                </tr>
                <tr>
                    <td>Part I: Display all movies in the Database</td>
                    <td><a href="displayAllMovies.jsp">Database Movies List</a></td>
                </tr>
                <tr>
                    <td>Part I.1: Display selected movie</td>
                    <td><a href="selectMovie.jsp">Click here to select a movie</a></td>
                </tr>
                <tr>
                    <td>Part II: Add a New Movie</td>
                    <td><a href="addMovie.jsp">Click here to add a new movie</a></td>
                </tr>
                <tr>
                    <td>Part III: Update a Movie</td>
                    <td><a href="selectupdate.jsp">Click here to select and update a movie</a></td>
                </tr>
                <tr>
                    <td>Part IV: Delete a Movie</td>
                    <td><a href="movieList.jsp">Click here to select a movie to delete</a></td>
                </tr>
            </table>
        </div>
    </div>
    <footer>
        <p>Author: Steve Stylin</p>
        <p>School: Bellevue University</p>
        <p>Professor: Darrell Payne</p>
    </footer>
</body>
</html>
