package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Student;
import dao.StudentDeclarationDAO;
import dao.StudentDeclarationDAOImpl;

@WebServlet(name = "RegistrationController", urlPatterns = "/RegistrationController")
//@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String userName;
		String name;
		String address;
		int contact;
		String course;
		String password;
		String admissionDate;

		name = request.getParameter("name");
		address = request.getParameter("address");
		contact = Integer.parseInt(request.getParameter("contact"));
		admissionDate = request.getParameter("admissionDate");
		course = request.getParameter("course");
		userName = request.getParameter("userName");
		password = request.getParameter("password");

		Student student = new Student(userName, name, address, contact, course, password, admissionDate);
		StudentDeclarationDAO studentDeclarationDAO = new StudentDeclarationDAOImpl();
		long id = studentDeclarationDAO.insertStudent(student);
		out.println(id);
		if (id > 0) {
			out.println("record inserted successfully------");
		} else {
			out.println("record insertion failed------");
		}
	}

}
