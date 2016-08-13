package com.abinfosoft.hrm.dto;

public class UserCredentials {
	
	int id;
	String username;
	String password;
	String userrole;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserrole() {
		return userrole;
	}
	public void setUserrole(String userrole) {
		this.userrole = userrole;
	}
	@Override
	public String toString() {
		return "UserCredentials [id=" + id + ", username=" + username + ", password=" + password + ", userrole="
				+ userrole + "]";
	}
	
	
	

}
