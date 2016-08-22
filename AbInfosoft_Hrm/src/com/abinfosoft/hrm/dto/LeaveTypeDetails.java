package com.abinfosoft.hrm.dto;

public class LeaveTypeDetails {
	
	private int id ; 
	private String leavename ; 
    private String 	leavedescription ; 
	private String leavetype ;
	private int leavedays;
	
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLeavename() {
		return leavename;
	}
	public void setLeavename(String leavename) {
		this.leavename = leavename;
	}
	public String getLeavedescription() {
		return leavedescription;
	}
	public void setLeavedescription(String leavedescription) {
		this.leavedescription = leavedescription;
	}
	public String getLeavetype() {
		return leavetype;
	}
	public void setLeavetype(String leavetype) {
		this.leavetype = leavetype;
	}
	public int getLeavedays() {
		return leavedays;
	}
	public void setLeavedays(int leavedays) {
		this.leavedays = leavedays;
	}
	
	

}
