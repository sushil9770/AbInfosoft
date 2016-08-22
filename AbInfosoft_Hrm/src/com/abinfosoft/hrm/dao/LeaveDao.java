package com.abinfosoft.hrm.dao;

import java.util.List;

import com.abinfosoft.hrm.dto.LeaveRequestDetails;
import com.abinfosoft.hrm.dto.LeaveTypeDetails;

public interface LeaveDao {
	
	public void addLeaveDetails(String leavename,String description,String leavedays);
	public List<LeaveTypeDetails> getAllLeaveList();
	public void deleteLeave(String leaveid);
	public List<LeaveRequestDetails> getAllLeaveRequestDetails();
	

}
