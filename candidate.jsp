<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.time.LocalDate"%>
<!DOCTYPE html>
<html>
<head>
<title>Candidate Registration Form</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #eee;
}

form {
	background-color: #fff;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px #ccc;
	max-width: 400px;
	margin: 0 auto;
	text-align: center;
}

h2 {
	margin-top: 0;
	color: #333;
	font-weight: bold;
	text-transform: uppercase;
	font-size: 24px;
	margin-bottom: 30px;
}

label {
	display: block;
	margin-bottom: 10px;
	font-weight: bold;
	color: #333;
	text-transform: uppercase;
	font-size: 14px;
	text-align: left;
}

p {
	display: block;
	margin-bottom: 10px;
	font-weight: bold;
	color: #333;
	text-transform: uppercase;
	font-size: 14px;
	text-align: center;
}

input[type=text], input[type=email], input[type=date], input[type=tel],
	input[type=password] {
	padding: 15px;
	border-radius: 5px;
	border: none;
	margin-bottom: 20px;
	width: 100%;
	box-sizing: border-box;
	background-color: #f2f2f2;
	color: #666;
	font-size: 14px;
	font-weight: bold;
	text-align: left;
	outline: none;
}

textarea {
	padding: 15px;
	border-radius: 5px;
	border: none;
	margin-bottom: 20px;
	width: 100%;
	box-sizing: border-box;
	background-color: #f2f2f2;
	color: #666;
	font-size: 14px;
	font-weight: bold;
	outline: none;
}

select{
	padding: 15px;
	border-radius: 5px;
	border: none;
	margin-bottom: 20px;
	width: 60%;
	box-sizing: border-box;
	background-color: #f2f2f2;
	color: #666;
	font-size: 14px;
	font-weight: bold;
	text-align: center;
	outline: none;
}
input[type=text]:focus, input[type=email]:focus, input[type=tel]:focus,
	input[type=date]:focus, input[type=password]:focus {
	background-color: #fff;
	color: #333;
}

input[type=submit] {
	background-color: #DC143C;
	color: #fff;
	padding: 15px 30px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	margin-top: 20px;
	width: 80%;
	box-sizing: border-box;
	text-transform: uppercase;
	font-size: 16px;
	font-weight: bold;
	transition: all 0.3s ease;
}

input[type=submit]:hover {
	background-color: rgb(7, 105, 97);
	transform: translateY(-2px);
	box-shadow: 0px 5px 10px #888;
}

.btn {
	background-color: #fff;
	color: #333;
	padding: 15px 30px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	margin-top: 20px;
	width: 100%;
	box-sizing: border-box;
	text-transform: uppercase;
	font-size: 16px;
	font-weight: bold;
	transition: all 0.3s ease;
	border: 2px solid #333;
}

.btn:hover {
	background-color: #333;
	color: #fff;
	transform: translateY(-2px);
	box-shadow: 0px 5px 10px #888;
}

button:hover {
	background-color: #555;
	transform: translateY(-2px);
	box-shadow: 0px 5px 10px #888;
}

.back-button {
	background-color: #008CBA;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	float: left;
}

.back-button:hover {
	background-color: #006d8a;
}
</style>
</head>
<body>
	<button class="back-button"
		onclick="window.location.href='http://localhost:8080/Student_Council_Voting_System/Candidate_Login.jsp'">Back</button>

	<form action="Candidate_Register" method="post"
		onsubmit="return calculateAge();">

		<h2>Candidate Registration Form</h2>

		<label for="voterOption">Are you a voter?</label> <select
			class="form-control" id="voterOption" name="voterOption"
			onchange="handleVoterOption()">
			<option value="yes">Yes</option>
			<option value="no">No</option>
		</select> <label for="mobile">Registration Number:</label> <input type="text"
			id="regno" name="regno" minlength="10" maxlength="10"
			placeholder="Enter your Registration Number" required> <label
			for="password">Password:</label> <input type="password" id="password"
			name="password"
			pattern="^(?=.*[0-9])(?=.*[!@#$%^&*])(?=.*[A-Z]).{8,}$"
			title="Password must contain at least 1 digit, 1 special character, 1 uppercase letter, and be at least 8 characters long."
			placeholder="Enter your password" required> <label
			for="description">Description</label>
		<textarea rows="4" cols="50" id="desc" name="descrp"
			placeholder="Enter your Description" required></textarea>

		<input type="submit" id="submitBtn" value="Submit">

		<p>
			Already have an account? <a href="Candidate_Login.jsp"> <br>
			<br>Login here
			</a>
		</p>
	</form>
	<script type="text/javascript">
		function handleVoterOption() {
			var voterOption = document.getElementById("voterOption");
			if (voterOption.value == "no") {
				window.location.href = "register.jsp";
			}
		}
	</script>
</body>
</html>
