<!DOCTYPE html>
<html>
<head>
<title>Online Student Council Voting System</title>
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
	<nav>
		<h3>
			<a href="http://localhost:8080/Student_Council_Voting_System">Home</a>
		</h3>

		<ul>

			<li><a href="Voter_Login.jsp">Voter Login</a></li>
			<li><a href="Candidate_Login.jsp">Candidate Login</a></li>
		</ul>
	</nav>
	<h1>Student Council System</h1>
	<img src="student_council.png" alt="Image description" height="400"
		width="500" style="display: block; margin: auto;">


</body>
</html>
