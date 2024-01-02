<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Candidate List</title>
<style>
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: Arial, sans-serif;
	font-size: 16px;
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

h1, h2 {
	text-align: center;
}

table {
	border-collapse: collapse;
	width: 80%;
	margin-top: 20px;
}

th, td {
	text-align: center;
	padding: 8px;
	border: 1px solid #ddd;
}

th {
	background-color: #48D1CC;
	color: black;
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
th {
	font-size: 20px;
}

td {
	font-size: 15px;
}

h1 {
	font-size: 25px;
}
</style>
</head>
<body>

	<div class="navbar">
		<a href="voter_dashboard.jsp"><i class="fas fa-home"></i> Home</a>
	</div>



	<table align="center">
		<caption>
			<h1>Candidate List</h1>
		</caption>

		<tr>
			<th>Sr No.</th>
			<th>Name</th>
			<th>Candidate ID</th>
			<th>Description</th>
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

			ps = con.prepareStatement(
			"select Name,description,cid from voterapprove,candidate where voterapprove.Reg_no=candidate.Reg_no");

			rs = ps.executeQuery();

			while (rs.next()) {
		%>
		<tr>


			<%
			cnt++;
			%>
			<td><%=cnt%></td>
			<td><%=rs.getString("Name")%></td>
			<td><%=rs.getInt("cid")%></td>
			<td><%=rs.getString("description")%></td>
		</tr>
		<%
		}

		} // try
		catch (Exception e) {
		System.out.println(e);
		} // catch
		%>


	</table>
	<br />


</body>
</html>