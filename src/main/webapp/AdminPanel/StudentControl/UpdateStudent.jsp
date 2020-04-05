<%@page import="dao.StudentDeclarationDAOImpl"%>
<%@page import="bean.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="./../../CommonThings/BootStrapCDN.jsp"%>
</head>
<body>
	<%
		if (request.getParameter("id") != null) {
		long id = Long.parseLong(request.getParameter("id"));
		StudentDeclarationDAOImpl studentDeclarationDAOImpl = new StudentDeclarationDAOImpl();
		Student student = studentDeclarationDAOImpl.getStudent(id);

		if (student != null) {
	%>
	<div class="container">
		<h2>Student Registration form</h2>
		<form action="../../UpdateController" method="post">
			<input type="hidden" value="<%=student.getS_id()%>" id="id" name="id">
			<div class="form-group">
				<label for="name">Name:</label> <input type="text"
					class="form-control" id="name" value="<%=student.getName()%>"
					placeholder="Enter name" name="name">
			</div>
			<div class="form-group">
				<label for="address">Address:</label> <input type="text"
					class="form-control" id="address" value="<%=student.getAddress()%>"
					placeholder="Enter address" name="address">
			</div>
			<div class="form-group">
				<label for="contact">Contact:</label> <input type="number"
					class="form-control" id="contact" value="<%=student.getContact()%>"
					placeholder="Enter contact" name="contact">
			</div>
			<div class="form-group">
				<label for="admissionDate">Admission Date:</label> <input
					type="date" class="form-control" id="admissionDate"
					value="<%=student.getAdmissionDate()%>"
					placeholder="Enter admission date" name="admissionDate">
			</div>
			<div class="form-group">
				<label for="course">Course:</label> <input type="text"
					class="form-control" id="course" value="<%=student.getCourse()%>"
					placeholder="Enter course" name="course">
			</div>
			<div class="form-group">
				<label for="fees">Fees:</label> <input type="text"
					class="form-control" id="fees" value="<%=student.getFees()%>"
					placeholder="Enter fees" name="fees">
			</div>
			<div class="form-group">
				<label for="Username">Username:</label> <input type="text"
					class="form-control" id="userName"
					value="<%=student.getUserName()%>" placeholder="Enter username"
					name="userName">
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					class="form-control" id="password"
					value="<%=student.getPassword()%>" placeholder="Enter password"
					name="password">
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
	<%
		}
	} else {
		out.println("Selected student details is not available in the system");
	}
	%>
</body>
</html>