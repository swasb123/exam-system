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

/**
 * Servlet implementation class UpdateController
 */
@WebServlet(name = "UpdateController", urlPatterns = "/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("id") != null){

            PrintWriter out = response.getWriter();
            String userName;
            String name;
            String address;
            int contact;
            String course;
            double fees;
            String password;
            String admissionDate;

            name = request.getParameter("name");
            address = request.getParameter("address");
            contact = Integer.parseInt(request.getParameter("contact"));
            admissionDate = request.getParameter("admissionDate");
            course = request.getParameter("course");
            fees = Double.parseDouble(request.getParameter("fees"));
            userName = request.getParameter("userName");
            password = request.getParameter("password");

            Student student = new Student(userName, name, address, contact, course, fees, password, admissionDate);

            long id = Long.parseLong(request.getParameter("id"));
            StudentDeclarationDAO studentDeclarationDAO = new StudentDeclarationDAOImpl();
            long updateCount = studentDeclarationDAO.updateStudent(id, student);

            if(updateCount > 0){
                response.sendRedirect("AdminPanel/ShowAllStudents.jsp");
            }
            else {
                out.println("Updating record got failed !!");
            }
        }
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

}
