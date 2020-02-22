package dao;

import java.util.List;

import bean.Student;

public interface StudentDeclarationDAO {
	public long insertStudent(Student student);
	public long updateStudent(long id, Student student);
	public boolean deleteStudent(long id);
	public Student getStudent(long id);
	public List<Student> getAllStudent();
	public List<Student> getByName(String name);
	

}
