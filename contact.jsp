<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Contact Us</title>
<style type="text/css">
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

input[type=text], input[type=email] {
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

input[type=text]:focus, input[type=email]:focus {
	background-color: #fff;
	color: #333;
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

input[type=submit] {
	background-color: rgb(7, 105, 97);
	color: #fff;
	padding: 15px 30px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	margin-top: 20px;
	width: 60%;
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
		onclick="window.location.href='http://localhost:8080/Student_Council_Voting_System'">Back</button>

	
	<form action="ConatctServlet" method="post">
	
		<div>
			<label for="name">Name</label> <input type="text" id="name"
				name="name" placeholder="Enter Your Name">
		</div>
		<div>
			<label for="email">Email address</label> <input type="email"
				id="email" name="email" placeholder="Enter Your Email">
		</div>
		<div>
			<label for="message">Message</label>
			<textarea id="message" name="msg" rows="3"
				placeholder="Enter Your Message" required></textarea>
		</div>
		<input type="submit" name="Submit" value="Submit">
	</form>


</body>
</html>
