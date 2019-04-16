package com.main.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="employee")
@Component
public class Employee implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="empId")
	private int empId;
	@Column(name="empName")
	private String empName;
	@Column(name="empPlace")
	private String empPlace;
	@Column(name="phoneNo")
	private long phoneNo;
	@Column(name="email")
	private String email;
	@Column(name="password")
	private String password;
	
	public Employee() {
		super();
	}

	public Employee(int empId, String empName, String empPlace, long phoneNo, String email, String password) {
		super();
		this.empId = empId;
		this.empName = empName;
		this.empPlace = empPlace;
		this.phoneNo = phoneNo;
		this.email = email;
		this.password = password;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getEmpPlace() {
		return empPlace;
	}

	public void setEmpPlace(String empPlace) {
		this.empPlace = empPlace;
	}

	public long getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(long phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}


}
