<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voter Dashboard</title>
<style type="text/css">
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: Arial, sans-serif;
	font-size: 16px;
	line-height: 1.5;
}

nav {
	background-color: #333;
	color: #fff;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px;
}

nav ul {
	list-style: none;
	margin: 0;
	padding: 0;
	display: flex;
}

nav ul li {
	margin-right: 20px;
}

nav ul li:last-child {
	margin-right: 0;
}

nav a {
	color: #fff;
	text-decoration: none;
	font-weight: bold;
}

nav a:hover {
	color: #ccc;
}

h1 {
	text-align: center;
	margin-top: 50px;
}

p {
	text-align: center;
	font-size: 18px;
}

.sidebar {
	background-color: #f1f1f1;
	height: 100%;
	position: fixed;
	left: 0;
	top: 39;
	width: 250px;
}

.sidebar ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

.sidebar ul li {
	border-bottom: 1px solid #ccc;
	position: relative;
}

.sidebar ul li:last-child {
	border-bottom: none;
}

.sidebar ul li a {
	color: #333;
	display: block;
	padding: 12px 16px;
	text-decoration: none;
}

.sidebar ul li a:hover {
	background-color: #ddd;
}

.sidebar ul li ul {
	display: none;
	position: absolute;
	left: 200px;
	top: 0;
	background-color: #fff;
	width: 200px;
	z-index: 1;
}

.sidebar ul li:hover ul {
	display: block;
}

.sidebar ul li ul li a {
	color: #333;
	display: block;
	padding: 8px 16px;
	text-decoration: none;
}

.sidebar ul li ul li a:hover {
	background-color: #ddd;
}

.image-container {
	text-align: center;
	margin-top: 50px;
}

.heading {
	font-size: 36px;
	color: #333;
}

li {
	display: block;
	margin-bottom: 10px;
	font-weight: bold;
	color: #333;
	text-transform: uppercase;
	font-size: 15px;
	text-align: left;
}

h3 {
	display: block;
	margin-bottom: 10px;
	font-weight: bold;
	color: #fff;
	text-transform: uppercase;
	font-size: 20px;
	text-align: left;
}
</style>
</head>
<body>
	<div>
		<nav>
			<h3>Voter Dashboard</h3>
			<ul>
				<li><a href="student_council.jsp">Logout</a></li>
			</ul>
		</nav>

	</div>
	<div class="sidebar">
		<!--  -->
		<ul>
			<li><a href="CastVote.jsp">Cast Vote</a></li>
		</ul>
		<ul>
			<li><a href="view_candidate_for_voter.jsp">View Candidates</a></li>
		</ul>

		<ul>
			<li><a href="result.jsp">Result</a></li>
		</ul>
	</div>
	<div class="image-container">
		<h1 class="heading"></h1>
		<img src="VOTEING.jpg" alt="Image description" height="450"
			width="650" style="display: block; margin: auto;">
	</div>

</body>
</html>