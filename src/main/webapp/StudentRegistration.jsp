<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration Form</title>
<%@include file="CommonThings/BootStrapCDN.jsp"%>
</head>
<body>
	<div class="container">
		<h2>Student Registration form</h2>
		<form action="./RegistrationController" method="post">
			<div class="form-group">
				<label for="name">Name:</label> <input type="text"
					class="form-control" id="name" placeholder="Enter name" name="name">
			</div>
			<div class="form-group">
				<label for="address">Address:</label> <input type="text"
					class="form-control" id="address" placeholder="Enter address"
					name="address">
			</div>
			<div class="form-group">
				<label for="contact">Contact:</label> <input type="number"
					class="form-control" id="contact" placeholder="Enter contact"
					name="contact">
			</div>
			<div class="form-group">
				<label for="admissionDate">Admission Date:</label> <input
					type="date" class="form-control" id="admissionDate"
					placeholder="Enter admission date" name="admissionDate">
			</div>
			<div class="form-group">
				<label for="course">Course:</label> <input type="text"
					class="form-control" id="course" placeholder="Enter course"
					name="course">
			</div>
			<div class="form-group">
				<label for="fees">Fees:</label> <input type="text"
					class="form-control" id="course" placeholder="Enter fees"
					name="fees">
			</div>
			<div class="form-group">
				<label for="Username">Username:</label> <input type="text"
					class="form-control" id="userName" placeholder="Enter username"
					name="userName">
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					class="form-control" id="password" placeholder="Enter password"
					name="password">
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>

</body>
</html>