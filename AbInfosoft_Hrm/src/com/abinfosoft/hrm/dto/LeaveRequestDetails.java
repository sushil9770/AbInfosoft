package com.abinfosoft.hrm.dto;

import java.util.Date;

public class LeaveRequestDetails {
	
	int id;
	private String leavename ;
	private String subject ; 
	private String description ; 
	private Date fromdate;
	private Date todate ; 
	private int userid ; 
	private String leave_status;
	
	
	
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
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getFromdate() {
		return fromdate;
	}
	public void setFromdate(Date fromdate) {
		this.fromdate = fromdate;
	}
	public Date getTodate() {
		return todate;
	}
	public void setTodate(Date todate) {
		this.todate = todate;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getLeave_status() {
		return leave_status;
	}
	public void setLeave_status(String leave_status) {
		this.leave_status = leave_status;
	}
	
	
	@Override
	public String toString() {
		return "LeaveRequestDetails [id=" + id + ", leavename=" + leavename + ", subject=" + subject + ", description="
				+ description + ", fromdate=" + fromdate + ", todate=" + todate + ", userid=" + userid
				+ ", leave_status=" + leave_status + "]";
	}

	
	
}
