package dao;

import java.util.List;
import java.util.ListIterator;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import bean.Student;

public class StudentDeclarationDAOImpl implements StudentDeclarationDAO {

	SessionFactory sessionFactory;
	Session session;
	Transaction transaction;

	public StudentDeclarationDAOImpl() {
		sessionFactory = helper.SessionFact.getSessionFactory();
		session = sessionFactory.openSession();
	}

	public long insertStudent(Student student) {
		transaction = session.beginTransaction();
		System.err.println("" + student.getName() + student.getAddress());
		long stuentCount = (Long) session.save(student);
		transaction.commit();
		// session.close();
		if (stuentCount > 0) {
			return stuentCount;
		} else {
			return 0;
		}

	}

	public long updateStudent(long id, Student student) {
		// TODO Auto-generated method stub
		return 0;
	}

	public boolean deleteStudent(long id) {
		transaction = session.beginTransaction();
		// Delete a transient object
		// Student student = new Student();
		// student.setS_id(id);

		// Delete a persistent object
		Student student = (Student) session.get(Student.class, id);
		System.err.println("" + student.getS_id());
		try {
			if (student != null) {
				session.delete(student);
				session.flush();
				transaction.commit();
				return true;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}

	public Student getStudent(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Student> getAllStudent() {
		transaction = session.beginTransaction();
		String hql = "from bean.Student";
		Query query = session.createQuery(hql);
		List<Student> studentList = query.list();
		ListIterator lit = studentList.listIterator();
		System.err.println("" + studentList.size());
		/*
		 * while (lit.hasNext()) { Student student = (Student) lit.next();
		 * System.out.println(student.getAddress() + "---"); }
		 */
		if (studentList.size() > 0) {
			return studentList;
		} else {
			return null;
		}
	}

	public List<Student> getByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

}
