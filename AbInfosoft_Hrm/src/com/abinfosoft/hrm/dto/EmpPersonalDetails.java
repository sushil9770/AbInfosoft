package com.abinfosoft.hrm.dto;

import java.util.Date;

public class EmpPersonalDetails {
	
	
	private String firstname;
	private String lastname;
	private Date dateofbirth;	
	private String imageurl	;
	private String gender;	
	private int	userid;	
	
	
	public EmpPersonalDetails() {
		// TODO Auto-generated constructor stub
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


	public int getUserid() {
		return userid;
	}


	public void setUserid(int userid) {
		this.userid = userid;
	}


	@Override
	public String toString() {
		return "EmployeePersonalDetails [firstname=" + firstname + ", lastname=" + lastname + ", dateofbirth="
				+ dateofbirth + ", imageurl=" + imageurl + ", gender=" + gender + ", userid=" + userid + "]";
	}
	
	
	

}
