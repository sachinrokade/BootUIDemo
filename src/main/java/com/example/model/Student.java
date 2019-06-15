package com.example.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Student {

	@Id
    Long rollNumber;
    String studentName;
    int Standard;
    String Divison;
    String DOB;
    String Email;
    String Gender;
    String City;
    String pinCode;
    String Contact;
    
	@Override
	public String toString() {
		return "\nStudent [rollNumber=" + rollNumber + ", studentName=" + studentName + ", Standard=" + Standard
				+ ", Divison=" + Divison + ", DOB=" + DOB + ", City=" + City + ", Email=" + Email + ", Gender=" + Gender
				+ ", pinCode=" + pinCode + ", Contact=" + Contact + "]";
	}
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Long getRollNumber() {
		return rollNumber;
	}
	public void setRollNumber(Long rollNumber) {
		this.rollNumber = rollNumber;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public int getStandard() {
		return Standard;
	}
	public void setStandard(int standard) {
		Standard = standard;
	}
	public String getDivison() {
		return Divison;
	}
	public void setDivison(String divison) {
		Divison = divison;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getPinCode() {
		return pinCode;
	}
	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}
	public String getContact() {
		return Contact;
	}
	public void setContact(String contact) {
		Contact = contact;
	}	
}
