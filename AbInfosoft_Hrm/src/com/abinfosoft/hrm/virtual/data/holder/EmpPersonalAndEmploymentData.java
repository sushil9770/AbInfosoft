package com.abinfosoft.hrm.virtual.data.holder;

import java.util.Date;

public class EmpPersonalAndEmploymentData {
	
	
	private int id;
	private String firstname;
	private String lastname;
	private Date dateofbirth;	
	private String imageurl	;
	private String gender;	
	private String companyname;
	private String companyaddress;
	private String companycontactno;
	private Date dateofjoining;
	private Date dateofrelieving;
	private String designation;	;
	private String jobtype;
	private String reasonofleaving;
	private int userid;
	private String status;
	private String supervisorname;
	private String empid;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public Date getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(Date dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getImageurl() {
		return imageurl;
	}
	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getCompanyaddress() {
		return companyaddress;
	}
	public void setCompanyaddress(String companyaddress) {
		this.companyaddress = companyaddress;
	}
	public String getCompanycontactno() {
		return companycontactno;
	}
	public void setCompanycontactno(String companycontactno) {
		this.companycontactno = companycontactno;
	}
	public Date getDateofjoining() {
		return dateofjoining;
	}
	public void setDateofjoining(Date dateofjoining) {
		this.dateofjoining = dateofjoining;
	}
	public Date getDateofrelieving() {
		return dateofrelieving;
	}
	public void setDateofrelieving(Date dateofrelieving) {
		this.dateofrelieving = dateofrelieving;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getJobtype() {
		return jobtype;
	}
	public void setJobtype(String jobtype) {
		this.jobtype = jobtype;
	}
	public String getReasonofleaving() {
		return reasonofleaving;
	}
	public void setReasonofleaving(String reasonofleaving) {
		this.reasonofleaving = reasonofleaving;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSupervisorname() {
		return supervisorname;
	}
	public void setSupervisorname(String supervisorname) {
		this.supervisorname = supervisorname;
	}
	public String getEmpid() {
		return empid;
	}
	public void setEmpid(String empid) {
		this.empid = empid;
	}
	
	
	@Override
	public String toString() {
		return "EmpPersonalAndEmploymentData [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname
				+ ", dateofbirth=" + dateofbirth + ", imageurl=" + imageurl + ", gender=" + gender + ", companyname="
				+ companyname + ", companyaddress=" + companyaddress + ", companycontactno=" + companycontactno
				+ ", dateofjoining=" + dateofjoining + ", dateofrelieving=" + dateofrelieving + ", designation="
				+ designation + ", jobtype=" + jobtype + ", reasonofleaving=" + reasonofleaving + ", userid=" + userid
				+ ", status=" + status + ", supervisorname=" + supervisorname + ", empid=" + empid + "]";
	}
	
	
	

}
