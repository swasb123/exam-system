<%@page import="dao.StudentDeclarationDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Student Operation</title>
</head>
<body>
	<%
		long id = Long.parseLong(request.getParameter("id"));
		StudentDeclarationDAOImpl studentDeclarationDAOImpl = new StudentDeclarationDAOImpl();
		boolean res = studentDeclarationDAOImpl.deleteStudent(id);
		if (res) {
			response.sendRedirect("../ShowAllStudents.jsp");
		} else {
			out.println("Record deletion operation got failed---");
		}
	%>

</body>
</html>