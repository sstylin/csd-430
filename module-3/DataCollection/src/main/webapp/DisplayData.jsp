
<!-- Steve Stylin Module 3: Display Data page -->

<%@ page contentType="text/html;charset=UTF-8" language="java" %> <!-- Set the content type and language for the JSP page -->
<%@ page import="java.io.*" %> <!-- Import necessary Java I/O classes -->
<html>
<head>
    <title>Data Display</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- Link to external CSS stylesheet -->
</head>
<body>
    <h1>Submitted Data</h1>
    <table border="1"> <!-- Create a table to display submitted data -->
        <tr>
            <th>Field</th> <!-- Table header for field names -->
            <th>Value</th> <!-- Table header for corresponding values -->
        </tr>
        <%
            String name = request.getParameter("name"); // Retrieve the name parameter from the request
            String email = request.getParameter("email"); // Retrieve the email parameter from the request
            String feedbackType = request.getParameter("feedbackType"); // Retrieve the feedback type parameter from the request
            String comments = request.getParameter("comments"); // Retrieve the comments parameter from the request
            String rating = request.getParameter("rating"); // Retrieve the rating parameter from the request

            out.println("<tr><td>Name</td><td>" + name + "</td></tr>"); // Output the name in a table row
            out.println("<tr><td>Email</td><td>" + email + "</td></tr>"); // Output the email in a table row
            out.println("<tr><td>Feedback Type</td><td>" + feedbackType + "</td></tr>"); // Output the feedback type in a table row
            out.println("<tr><td>Comments</td><td>" + comments + "</td></tr>"); // Output the comments in a table row
            out.println("<tr><td>Rating</td><td>" + rating + "</td></tr>"); // Output the rating in a table row
        %>
    </table>
    <br>
    <form action="DataCollection.jsp" method="get"> <!-- Form to navigate back to the data collection page -->
        <input type="submit" value="Back to Data Collection Form"> <!-- Submit button for the form -->
    </form>
</body>
</html>
