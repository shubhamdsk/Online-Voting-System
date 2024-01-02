<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.text.*, java.text.ParseException"%>
<%@ page import="java.sql.*"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cast Vote</title>
    <script type="text/javascript">
        function displayAlertAndRedirect() {
            alert("No Election Schedule");
            setTimeout(function() {
                window.location.href = "voter_dashboard.jsp";
            }, 2000); // 2 seconds
        }
    </script>
</head>
<body>
    <%
    int flag = 0, found = 0;
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/mca?allowPublicKeyRetrieval=true&useSSL=false";
        String user = "root";
        String pass = "root";
        con = DriverManager.getConnection(url, user, pass);

        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String currentDate = df.format(new Date());

        ps = con.prepareStatement("select date, name from election where date = ?");
        ps.setString(1, currentDate);

        rs = ps.executeQuery();

        while (rs.next()) {
            String dbdate = rs.getString("date");
            String Ename = rs.getString("name");
            out.print("<h2>Election name: " + Ename + "</h2");

            if (currentDate.equals(dbdate)) {
                out.println("<script>alert('Election Available');</script>");
                response.sendRedirect("FinalElection.jsp");
                found = 1;
            } else {
                flag = flag + 1;
            }
        }

        if (flag == 1 && found == 0) {
            out.println("<script>displayAlertAndRedirect();</script>");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    %>
</body>
</html>
