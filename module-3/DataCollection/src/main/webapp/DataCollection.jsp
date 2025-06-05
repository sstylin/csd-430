<!-- Steve Stylin: Module 3 : Data Collection Page -->

<%@ page contentType="text/html;charset=UTF-8" language="java" %> <!-- Set the content type and language for the JSP page -->
<html>
<head>
    <title>User Data Collection Form</title> <!-- Title of the web page -->
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- Link to the external CSS stylesheet -->
</head>
<body>
    <h1>User Data Collection Form</h1> <!-- Main heading of the form -->
    <form action="DisplayData.jsp" method="post"> <!-- Form submission to DisplayData.jsp using POST method -->
        <label for="name">Name:</label> <!-- Label for the name input field -->
        <input type="text" id="name" name="name" required><br><br> <!-- Input field for user name, marked as required -->

        <label for="email">Email:</label> <!-- Label for the email input field -->
        <input type="email" id="email" name="email" required><br><br> <!-- Input field for user email, marked as required -->

        <label for="feedbackType">Feedback Type:</label> <!-- Label for the feedback type selection -->
        <select id="feedbackType" name="feedbackType" required> <!-- Dropdown for selecting feedback type, marked as required -->
            <option value="jobApplication">Job Application</option> <!-- Option for job application feedback -->
            <option value="restaurantFeedback">Restaurant Feedback</option> <!-- Option for restaurant feedback -->
            <option value="itemReview">Item Review</option> <!-- Option for item review feedback -->
        </select><br><br>

        <label for="comments">Comments:</label> <!-- Label for the comments textarea -->
        <textarea id="comments" name="comments" rows="4" required></textarea><br><br> <!-- Textarea for user comments, marked as required -->

        <label for="rating">Rating (1-5):</label> <!-- Label for the rating input field -->
        <input type="number" id="rating" name="rating" min="1" max="5" required><br><br> <!-- Input field for rating, marked as required -->

        <input type="submit" value="Submit"> <!-- Submit button for the form -->
    </form>
</body>
</html>
