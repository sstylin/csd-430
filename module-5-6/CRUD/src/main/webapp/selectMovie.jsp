<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Select a Movie</title>
</head>
<body>
    <h1>Select Movie</h1>

    <form action="displayMovie.jsp" method="post">
        <label for="movieId">Select Movie ID:</label>
        <select name="movieId" id="movieId">
            <%
                // Database connection parameters
                String url = "jdbc:mysql://localhost:3306/csd430";
                String user = "student1";
                String password = "pass";
                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection(url, user, password);
                    stmt = conn.createStatement();
                    String sql = "SELECT id FROM steve_movies_data";
                    rs = stmt.executeQuery(sql);

                    if (!rs.isBeforeFirst()) {
                        out.println("<option value=''>No movies available</option>");
                    } else {
                        while (rs.next()) {
                            int movieId = rs.getInt("id");
            %>
                            <option value="<%= movieId %>"><%= movieId %></option>
            <%
                        }
                    }
                } catch (Exception e) {
                    out.println("<option value=''>Error loading movies</option>");
                    
                    // Print stack trace to HTML for debugging (development only)
                    java.io.StringWriter sw = new java.io.StringWriter();
                    java.io.PrintWriter pw = new java.io.PrintWriter(sw);
                    e.printStackTrace(pw);
                    out.println("<pre>" + sw.toString() + "</pre>");
                } finally {
                    if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
                    if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
                    if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
                }
            %>
        </select>
        <br><br>
        <input type="submit" value="Display Movie">
    </form>
</body>
</html>
