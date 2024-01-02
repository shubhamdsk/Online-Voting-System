<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>

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
	width: 50%;
	margin-top: 20px;
}

th, td {
	text-align: center;
	padding: 8px;
	border: 1px solid #ddd;
}

td {
	background-color: #FFFFE0;
	color: black;
}

th {
	background-color: crimson;
	color: white;
}

tr:nth-child(even) {
	background-color: crimson;
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

	<table border="2" align="center">
		<caption>
			<h2 align="center">Candidates List</h2>
		</caption>

		<tr>
			<th>Candidate Name</th>
			<th>Total Votes</th>

		</tr>
		<%
		Connection con;
		PreparedStatement ps, ps1;
		Statement st;
		ResultSet rs, rs1, rs2, rs3;
		DatabaseMetaData dbmd;
		ResultSetMetaData rsmd;

		try {
			// load a driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/mca?allowPublicKeyRetrieval=true&useSSL=false";
			String user = "root";
			String pass = "root";
			con = DriverManager.getConnection(url, user, pass);

			ps1 = con.prepareStatement("select * from winner");

			rs3 = ps1.executeQuery();
			while (rs3.next()) {

				ps = con.prepareStatement("select distinct(vote),cid from Result");

				rs = ps.executeQuery();

				while (rs.next()) {
			int voteCount = 0;
			int i = rs.getInt("cid");

			ps = con.prepareStatement("select * from Result where cid=?");
			ps.setInt(1, i);
			rs1 = ps.executeQuery();
			while (rs1.next()) {
				voteCount++;
			}
		%>
		<tr>

			<td><%=rs.getString("vote")%></td>
			<td><%=voteCount%></td>
		</tr>

		<%
		}
		} //while
		%>
	</table>

	<br>
	<br>

	<table border="2" align="center">
		<caption>
			<h2 align="center">Winner</h2>
		</caption>
		<tr>

			<th>Name</th>
			<th>Votes</th>
			<th>Election name</th>

		</tr>

		<%
		ps = con.prepareStatement("select * from winner");

		rs2 = ps.executeQuery();

		while (rs2.next()) {
		%>


		<tr>
			<td><%=rs2.getString(1)%></td>
			<td><%=rs2.getString(2)%></td>
			<td><%=rs2.getString(4)%></td>

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