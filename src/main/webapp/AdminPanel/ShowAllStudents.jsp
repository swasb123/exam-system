<%@page import="java.util.List"%>
<%@page import="java.util.ListIterator"%>
<%@page import="dao.StudentDeclarationDAOImpl"%>
<%@page import="bean.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Data List</title>
<%@include file="../CommonThings/BootStrapCDN.jsp"%>
<style type="text/css">
.update, .delete {
	border-radius: 4px;
	padding: 5px;
}

.update {
	border: solid 2px green;
}

.delete {
	border: solid 2px red;
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">WebSiteName</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="#">Page 1</a></li>
			<li><a href="#">Page 2</a></li>
		</ul>
		<form class="navbar-form navbar-right" action="#" method="post">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search"
					name="search">
			</div>
			<button type="submit" class="btn btn-default" name="submit_serach">
				<i class="glyphicon glyphicon-search"></i>
			</button>

		</form>
	</div>
	</nav>

	<!-- Search Data start -->

	<%
		if (request.getParameter("submit_serach") != null) {
		String searchString = request.getParameter("search");
	%>
	<hr />

	<div class="container">
	<h2>Student Data List</h2>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Address</th>
				<th>Contact</th>
				<th>Admission Date</th>
				<th>Course</th>
				<th>Fees</th>
				<th>Username</th>
				<th>Password</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
		</thead>
		<%
			StudentDeclarationDAOImpl studentDeclarationDAOImpl = new StudentDeclarationDAOImpl();
		List<Student> list = studentDeclarationDAOImpl.getByName(searchString);
		ListIterator<Student> lits = list.listIterator();
		while (lits.hasNext()) {
			Student student = (Student) lits.next();
		%>
		<tr>
			<td><%=student.getS_id()%></td>
			<td><%=student.getName()%></td>
			<td><%=student.getAddress()%></td>
			<td><%=student.getContact()%></td>
			<td><%=student.getAdmissionDate()%></td>
			<td><%=student.getCourse()%></td>
			<td><%=student.getFees()%></td>
			<td><%=student.getUserName()%></td>
			<td><%=student.getPassword()%></td>
			<td><a class="update"
				href="StudentControl/UpdateStudent.jsp?id=<%=student.getS_id()%>">Update</a></td>
			<td><a class="delete"
				href="StudentControl/DeleteStudent.jsp?id=<%=student.getS_id()%>">Delete</a></td>
		</tr>
		<%
			}
		%>
	</table>

	</div>
	<hr />
	<%
		}
	%>
	<!-- Search Data start -->

	<div class="container">
		<h2>Student Data List</h2>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Address</th>
					<th>Contact</th>
					<th>Admission Date</th>
					<th>Course</th>
					<th>Fees</th>
					<th>Username</th>
					<th>Password</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<%
				StudentDeclarationDAOImpl studentDeclarationDAOImpl = new StudentDeclarationDAOImpl();
			List<Student> list = studentDeclarationDAOImpl.getAllStudent();
			ListIterator<Student> lit = list.listIterator();
			while (lit.hasNext()) {
				Student student = (Student) lit.next();
			%>
			<tr>
				<td><%=student.getS_id()%></td>
				<td><%=student.getName()%></td>
				<td><%=student.getAddress()%></td>
				<td><%=student.getContact()%></td>
				<td><%=student.getAdmissionDate()%></td>
				<td><%=student.getCourse()%></td>
				<td><%=student.getFees()%></td>
				<td><%=student.getUserName()%></td>
				<td><%=student.getPassword()%></td>
				<td><a class="update"
					href="StudentControl/UpdateStudent.jsp?id=<%=student.getS_id()%>">Update</a></td>
				<td><a class="delete"
					href="StudentControl/DeleteStudent.jsp?id=<%=student.getS_id()%>">Delete</a></td>
			</tr>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>