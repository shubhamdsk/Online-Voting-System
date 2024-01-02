<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
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
			<h3>Admin Dashboard</h3>
			<ul>
				<li><a href="index.html" >Logout</a></li>
			</ul>
		</nav>

	</div>
	<div class="sidebar">
		<ul>
			<li><a href="#">Voter</a>
				<ul>
					<li><a href="voter_approve.jsp">Approve Voter</a></li>
					<li><a href="voter_list.jsp">Voter List</a></li>
					<li><a href="voter_reject.jsp">Rejected Voter</a></li>
				</ul></li>

			<li><a href="#">Candidate</a> <!--  -->
				<ul>
					<li><a href="candidate_list.jsp">Candidate List</a></li>
				</ul></li>
			<li><a href="#">Election</a>
				<ul>
					<li><a href="declare_election.jsp">Declare Election</a></li>
					<li><a href="view_elections.jsp">Election List</a></li>
				</ul></li>
			<li><a href="#">Result</a>
				<ul>
					<li><a href="declare_result.jsp">Declare Result</a></li>
					<li><a href="remove_result.jsp">Remove Result</a></li>
				</ul></li>

			<li><a href="#">Report</a>
				<ul>
					<li><a href="candidatewise_report.html">Candidate Wise
							Report</a></li>
					<li><a href="report.jsp">Overall Report</a></li>
				</ul></li>
				
				<li><a href="#">Feedback</a>
				<ul>
					<li><a href="feedback.jsp"> Feedback </a></li>
				</ul></li>

		</ul>
	</div>

	<div class="image-container">
		<h1 class="heading">Administration</h1>
		<img src="admin.png" alt="Image description" height="400" width="600"
			style="display: block; margin: auto;">
	</div>

</body>
</html>