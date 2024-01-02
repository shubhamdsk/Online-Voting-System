<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Election List</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
<!-- Custom CSS -->
<style>
body {
	background-color: #f8f9fa;
}

h1 {
	text-align: center;
	margin-top: 50px;
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

input, label {
	font-size: 20px
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
	background-color: #FF6347;
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
<h2 align="center">Election List</h2>
	<table>
		
		<tr>
			<th>Sr No.</th>
			<th>Name</th>
			<th>Date</th>
			<th>Election ID</th>
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

			ps = con.prepareStatement("select * from election");

			rs = ps.executeQuery();

			while (rs.next()) {
		%>
		<tr>


			<%
			cnt++;
			%>
			<td><%=cnt%></td>
			<td><%=rs.getString("name")%></td>
			<td><%=rs.getString("date")%></td>
			<td><%=rs.getString("eid")%></td>
		</tr>
		<%
		}

		} // try
		catch (Exception e) {
		System.out.println(e);
		} // catch
		%>


	</table>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.3/umd/popper.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
</body>
</html>
