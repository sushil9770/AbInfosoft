package com.abinfosoft.hrm.action.one;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.abinfosoft.hrm.dao.LeaveDao;
import com.abinfosoft.hrm.dao.imp.LeaveDaoImp;
import com.abinfosoft.hrm.dto.LeaveRequestDetails;
import com.abinfosoft.hrm.dto.LeaveTypeDetails;
import com.abinfosoft.hrm.virtual.data.holder.EmpPersonalAndLeaveData;
import com.opensymphony.xwork2.ActionSupport;

public class LeaveAction  extends ActionSupport implements SessionAware,RequestAware{

	private Map session;
	private Map request;
	private String leavename;
	private String leavedescription;
	private String leaveid;
	private String leavedays;
	
	public Map getSession() {
	return session;
	}
	
	public Map getRequest() {
	return request;
	}
	
	@Override
	public void setRequest(Map request) {
	this.request = request;
	}
	
	@Override
	public void setSession(Map session) {
	this.session = session;	
	}
	
	
	public String getLeaveid() {
		return leaveid;
	}

	public void setLeaveid(String leaveid) {
		this.leaveid = leaveid;
	}

	public String leaverequest()
	{
		LeaveDao dao=new LeaveDaoImp();
		List<EmpPersonalAndLeaveData>list=dao.getAllLeaveRequestDetails();
		System.err.println(list);
		request.put("data", list);
		
	return "success";
	}
	
	public String leavelist()
	{
		LeaveDao dao=new LeaveDaoImp();
	    List<LeaveTypeDetails> list= dao.getAllLeaveList();
	    System.err.println(list);
		request.put("data", list);
	return "success";
	}
	
	public String leaveadd()
	{
	
	return "success";
	}
	
	public String leaveadddetails()
	{
		
		LeaveDao dao=new LeaveDaoImp();
		dao.addLeaveDetails(getLeavename(), getLeavedescription(),getLeavedays());
		return "success";
	}

	
	public String leavedelete()
	{
		
		LeaveDao dao=new LeaveDaoImp();
		dao.deleteLeave(getLeaveid());
		return "success";
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

	public String getLeavedays() {
		return leavedays;
	}

	public void setLeavedays(String leavedays) {
		this.leavedays = leavedays;
	}
	  
	
	
}
