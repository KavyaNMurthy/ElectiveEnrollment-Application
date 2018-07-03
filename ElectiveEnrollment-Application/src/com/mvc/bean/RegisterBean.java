package com.mvc.bean;

public class RegisterBean {
	private String fullName;
	private String email;
	private String department;
	private String semester;
	private String usn;
	private String section;
	private String elective;
	private String courseid;
	
	public String getDepartment() {
		System.out.println("getDepartment "+ department);
	return department;
	}
	public void setDepartment(String department) {
	this.department = department;
	System.out.println("setDepartment" + department);
	}
	public String getSemester() {

	return semester;
	}
	public void setSemester(String semester) {
		
	this.semester = semester;
	}
	public String getusn() {

		return usn;
		}
		public void setusn(String usn) {
			
		this.usn = usn;
		}
		public String getSection() {

			return section;
			}
			public void setSection(String section) {
				
			this.section = section;
			}
			public String getElective() {

				return elective;
				}
	public void setElective(String elective) 
	{
	this.elective = elective;
	}
	public void setFullName(String fullName) 
	{
		
	this.fullName = fullName;
	}
	public String getFullName() {
		
	return fullName;
	}
	public void setEmail(String email) {
			this.email = email;
	}
	public String getEmail() {
		
	return email;
	}
	
	public void setcourseid(String courseid) {
		this.courseid = courseid;
		System.out.println("setid" +courseid);
}
public String getcourseid() {
	System.out.println("getid" +courseid);
return courseid;
}

}
