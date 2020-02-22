package bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Student {
	@Id
	@GeneratedValue
	private long s_id;
	@Column(unique = true, nullable = false)
	//@Column(unique = true)
	private String userName;
	private String name;
	private String address;
	private int contact;
	private String course;
	private double fees;
	private String password;
	private String admissionDate;
	
	public Student() {}

	public Student(String userName, String name, String address, int contact, String course, double fees, String password,
			String admissionDate) {
		super();
		this.userName = userName;
		this.name = name;
		this.address = address;
		this.contact = contact;
		this.course = course;
		this.fees = fees;
		this.password = password;
		this.admissionDate = admissionDate;
	}

	public long getS_id() {
		return s_id;
	}

	public void setS_id(long s_id) {
		this.s_id = s_id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getContact() {
		return contact;
	}

	public void setContact(int contact) {
		this.contact = contact;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}
	
	public double getFees() {
		return fees;
	}

	public void setFees(double course) {
		this.fees = fees;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAdmissionDate() {
		return admissionDate;
	}

	public void setAdmissionDate(String admissionDate) {
		this.admissionDate = admissionDate;
	}


}
