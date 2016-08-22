package com.abinfosoft.hrm.dao;

import java.util.List;

import com.abinfosoft.hrm.dto.LeaveTypeDetails;
import com.abinfosoft.hrm.virtual.data.holder.EmpPersonalAndLeaveData;

public interface LeaveDao {
	
	public void addLeaveDetails(String leavename,String description,String leavedays);
	public List<LeaveTypeDetails> getAllLeaveList();
	public void deleteLeave(String leaveid);
	public List<EmpPersonalAndLeaveData> getAllLeaveRequestDetails();
	public List<String> getAllLeaveName();
	
	

}
