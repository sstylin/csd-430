<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Data Encryption Example</title>
</head>
<body>
<%@ page import="com.example.security.DataSecurity" %>
<%@ page import="javax.crypto.SecretKey" %>
<%@ page import="java.io.PrintWriter" %>

<%
    String originalData = "Sensitive Information"; // Data to be encrypted
    SecretKey secretKey = DataSecurity.generateKey(); // Generate the secret key
    String encryptedData = DataSecurity.encrypt(originalData, secretKey); // Encrypt the data

    // Output the encrypted data using the implicit out object
    out.println("Original Data: " + originalData);
    out.println("Encrypted Data: " + encryptedData);
%>

</body>
</html>
