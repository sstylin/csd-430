<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="styles.css">
    <title>Countries I have enjoyed visiting</title>
</head>
<body>
<h1>Countries and Cities That I Loved Visiting</h1>

<%
    // Personal Information
    String name = "Steve Stylin";
    String assignmentNumber = "2";
    String date = "May 30, 2025";
    String comments = "This page displays a list of countries I have enjoyed visiting, along with some details about each.";

    // Creating a list of travel destinations
    List<String[]> destinations = new ArrayList<>();
    destinations.add(new String[]{"Paris", "Marseille and Montpellier", "for the wine and the sea."});
    destinations.add(new String[]{"Guadeloupe", "Les Abimes", "The Church of the Immaculate Conception."});
    destinations.add(new String[]{"United States", "New York", "Ausable Chasm, hiking trail."});
    destinations.add(new String[]{"United States", "New York", "Thompsons Lake Campground Thacher State Park."});
    destinations.add(new String[]{"Canada", "Quebec", "Côte de la Montagne, old architecture."});
%>

<!-- Displaying Personal Information -->
<div>
    <h2>Personal Information</h2>
    <p><strong>Name:</strong> <%= name %></p>
    <p><strong>Assignment Number:</strong> <%= assignmentNumber %></p>
    <p><strong>Date:</strong> <%= date %></p>
    <p><strong>Comments:</strong> <%= comments %></p>
</div>

<table>
    <thead>
        <tr>
            <th>Country</th>
            <th>City</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <%
            // Looping through the list to display each destination
            for (String[] destination : destinations) {
        %>
        <tr>
            <td><%= destination[0] %></td>
            <td><%= destination[1] %></td>
            <td><%= destination[2] %></td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>

</body>
</html>
