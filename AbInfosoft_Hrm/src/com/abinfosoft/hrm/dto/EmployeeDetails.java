package com.abinfosoft.hrm.dto;

import java.util.Date;

public class EmployeeDetails {
	private int id;
	private String employee_name;
	private String employee_email;
	private String employee_id;
	private String employee_phone;
	
	
	private Date employee_payment_date;

	public EmployeeDetails() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmployee_name() {
		return employee_name;
	}

	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}

	public String getEmployee_email() {
		return employee_email;
	}

	public void setEmployee_email(String employee_email) {
		this.employee_email = employee_email;
	}

	public String getEmployee_id() {
		return employee_id;
	}

	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}

	public String getEmployee_phone() {
		return employee_phone;
	}

	public void setEmployee_phone(String employee_phone) {
		this.employee_phone = employee_phone;
	}

	public Date getEmployee_payment_date() {
		return employee_payment_date;
	}

	public void setEmployee_payment_date(Date employee_payment_date) {
		this.employee_payment_date = employee_payment_date;
	}

	@Override
	public String toString() {
		return "EmployeeDetails [id=" + id + ", employee_name=" + employee_name + ", employee_email=" + employee_email
				+ ", employee_id=" + employee_id + ", employee_phone=" + employee_phone + ", employee_payment_date="
				+ employee_payment_date + "]";
	}
	
	
	

}
