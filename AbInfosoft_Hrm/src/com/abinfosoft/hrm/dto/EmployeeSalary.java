package com.abinfosoft.hrm.dto;

import java.util.Date;

public class EmployeeSalary {
	
	private  String emp_name;
	private  String emp_id;
	private  String ref_no;
	private String amount_transfer;
	private Date date;
	private String description;
	private String bank;
	private String deduction;
	private int id;
	
	 public EmployeeSalary() {
	}

	public String getEmp_name() {
		return emp_name;
	}

	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}

	public String getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}

	public String getRef_no() {
		return ref_no;
	}

	public void setRef_no(String ref_no) {
		this.ref_no = ref_no;
	}

	public String getAmount_transfer() {
		return amount_transfer;
	}

	public void setAmount_transfer(String amount_transfer) {
		this.amount_transfer = amount_transfer;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getDeduction() {
		return deduction;
	}

	public void setDeduction(String deduction) {
		this.deduction = deduction;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	

	@Override
	public String toString() {
		return "EmployeeSalary [emp_name=" + emp_name + ", emp_id=" + emp_id + ", ref_no=" + ref_no
				+ ", amount_transfer=" + amount_transfer + ", date=" + date + ", description=" + description + ", bank="
				+ bank + ", deduction=" + deduction + ", id=" + id + "]";
	}
	
	 
	 
}
