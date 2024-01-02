<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
String electionName = request.getParameter("name");
String date = request.getParameter("date");
DatabaseConfig db;

try {
    db = new DatabaseConfig();

    db.ps = db.con.prepareStatement("insert into voter election(?,?)");
    db.ps.setString(1, electionName);
    db.ps.setString(2, date);

    int res = db.ps.executeUpdate();
    
    if (res > 0) {
        // If registration is successful, display success message and redirect using JavaScript
        out.println("<script>alert('Election Cast Successful, Now voting is Available');</script>");
        out.println("<script>window.location.href = 'Admin_dashboard.jsp';</script>");
    } else {
        // If registration is unsuccessful due to duplicate data, display error message and redirect using JavaScript
        out.println("<script>alert('Registration failed. This registration number already exists.');");
        out.println("window.location.href = 'declare_election.jsp';</script>");
    }

} catch (Exception ex) {
    // Display an error message and redirect using JavaScript in case of exceptions
    out.println("<script>alert('Registration failed. An error occurred.');</script>");
    out.println("<script>window.location.href = 'declare_election.jsp';</script>");
    ex.printStackTrace();
}
%>
