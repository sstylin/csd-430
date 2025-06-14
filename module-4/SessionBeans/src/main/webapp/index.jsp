
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.travel.TravelDestination" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"> <!-- Setting the character encoding for the document -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- Ensuring responsive design -->
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- Linking to the external CSS stylesheet -->
    <title>Countries I have enjoyed visiting</title> <!-- Title of the webpage -->
</head>
<body>
<h1>Countries and Cities That I Loved Visiting</h1>

<%
    // Personal Information
    String name = "Steve Stylin"; // My information
    String assignmentNumber = "4.2, with Java Bean"; // Assignment identifier
    String date = "June 14, 2025"; // Date of the assignment
    String comments = "This page displays a list of countries I have enjoyed visiting, along with some details about each."; // Description of the page content

    // Creating a list of travel destinations
    List<TravelDestination> destinations = new ArrayList<>(); // Initializing a list to hold travel destinations
    TravelDestination destination1 = new TravelDestination(); // Creating a new TravelDestination object
    destination1.setCountry("France"); // Setting the country for the destination
    destination1.setCity("Paris"); // Setting the city for the destination
    destination1.setDescription("Known for its art, fashion, and culture."); // Setting a description for the destination
    destinations.add(destination1); // Adding the first destination to the list

    TravelDestination destination2 = new TravelDestination(); // Creating another TravelDestination object
    destination2.setCountry("Guadeloupe"); // Setting the country for the second destination
    destination2.setCity("Les Abimes"); // Setting the city for the second destination
    destination2.setDescription("The Church of the Immaculate Conception."); // Setting a description for the second destination
    destinations.add(destination2); // Adding the second destination to the list

    TravelDestination destination3 = new TravelDestination(); // Creating a third TravelDestination object
    destination3.setCountry("United States"); // Setting the country for the third destination
    destination3.setCity("New York"); // Setting the city for the third destination
    destination3.setDescription("Ausable Chasm, hiking trail."); // Setting a description for the third destination
    destinations.add(destination3); // Adding the third destination to the list

    TravelDestination destination4 = new TravelDestination(); // Creating a fourth TravelDestination object
    destination4.setCountry("United States"); // Setting the country for the fourth destination
    destination4.setCity("New York"); // Setting the city for the fourth destination
    destination4.setDescription("Thompsons Lake Campground Thacher State Park."); // Setting a description for the fourth destination
    destinations.add(destination4); // Adding the fourth destination to the list

    TravelDestination destination5 = new TravelDestination(); // Creating a fifth TravelDestination object
    destination5.setCountry("Canada"); // Setting the country for the fifth destination
    destination5.setCity("Quebec"); // Setting the city for the fifth destination
    destination5.setDescription("Côte de la Montagne, old architecture."); // Setting a description for the fifth destination
    destinations.add(destination5); // Adding the fifth destination to the list
%>

<!-- Displaying Personal Information -->
<div>
    <h2>Personal Information</h2> <!-- Header for personal information section -->
    <p><strong>Name:</strong> <%= name %></p> <!-- Displaying the name -->
    <p><strong>Assignment Number:</strong> <%= assignmentNumber %></p> <!-- Displaying the assignment number -->
    <p><strong>Date:</strong> <%= date %></p> <!-- Displaying the date -->
    <p><strong>Comments:</strong> <%= comments %></p> <!-- Displaying comments about the page -->
</div>

<table>
    <thead>
        <tr>
            <th>Country</th> <!-- Table header for country -->
            <th>City</th> <!-- Table header for city -->
            <th>Description</th> <!-- Table header for description -->
        </tr>
    </thead>
    <tbody>
        <%
            // Looping through the list to display each destination
            for (TravelDestination destination : destinations) { // Iterating over each TravelDestination in the list
        %>
        <tr>
            <td><%= destination.getCountry() %></td> <!-- Displaying the country of the destination -->
            <td><%= destination.getCity() %></td> <!-- Displaying the city of the destination -->
            <td><%= destination.getDescription() %></td> <!-- Displaying the description of the destination -->
        </tr>
        <%
            } // End of the loop
        %>
    </tbody>
</table>

</body>
</html>
