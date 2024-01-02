<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Report</title>
<style>
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: Arial, sans-serif;
	font-size: 14px;
	line-height: 1.5;
}

.navbar {
	background-color: #333;
	overflow: hidden;
	font-size: 20px
}

.navbar a {
	float: left;
	display: block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.navbar a:hover {
	background-color: #ddd;
	color: black;
}

th {
	font-size: 20px;
}

td {
	font-size: 15px;
}

h2 {
	font-size: 25px;
}

h1, h2 {
	text-align: center;
}

table {
	border-collapse: collapse;
	width: 100%;
	margin-top: 20px;
}

th, td {
	text-align: center;
	padding: 8px;
	border: 1px solid #ddd;
}

th {
	background-color: #008080;
	color: white;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

@media screen and (max-width: 600px) {
	.navbar a {
		float: none;
		width: 100%;
	}
}
</style>
</head>
<body>

	<div class="navbar">
		<a href="Admin_dashboard.jsp"><i class="fas fa-home"></i> Home</a>
	</div>
	<table>
		<caption>
			<h2>Report</h2>
		</caption>
		<tr>
			<th>Sr No.</th>
			<th>Reg No</th>
			<th>Name</th>
			<th>Vote</th>
			<th>Candidate ID</th>
		</tr>
		<%
		int cnt = 0;
		Connection con;
		PreparedStatement ps;
		Statement st;
		ResultSet rs;
		DatabaseMetaData dbmd;
		ResultSetMetaData rsmd;

		try {
			// load a driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/mca?allowPublicKeyRetrieval=true&useSSL=false";
			String user = "root";
			String pass = "root";
			con = DriverManager.getConnection(url, user, pass);

			ps = con.prepareStatement("select * from result");

			rs = ps.executeQuery();

			while (rs.next()) {
		%>
		<tr>
			<%
			cnt++;
			%>
			<td><%=cnt%></td>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
		</tr>
		<%
		}

		} // try
		catch (Exception e) {
		System.out.println(e);
		} // catch
		%>
	</table>
</body>
</html>