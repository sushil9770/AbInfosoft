package com.abinfosoft.hrm.dao;

import java.util.List;

import com.abinfosoft.hrm.dto.EmpEmploymentDetails;
import com.abinfosoft.hrm.dto.EmpPersonalDetails;
import com.abinfosoft.hrm.virtual.data.holder.EmpPersonalAndEmploymentData;

public interface OrganizationDao {
	
	public List<Long> orgAllEmployeeId(long orgid);
	public List<EmpPersonalDetails> orgAllEmployeePersonalDetails(List<Long> userid);
	public List<EmpEmploymentDetails> oragAllEmployeeEmploymentDetails(List<Long> userid);
	public List<EmpPersonalAndEmploymentData> orgAllEmpPersonalEmploymentDetails(List<Long> userid);
	public List<String>OrgAllEmployeeName();
	public List<String>OrgAllEmployeeId();
	public List<String>OrgAllEmployeeSupervisor();
	public List<String>OrgAllEmployeeDesignation();
	public List<EmpPersonalAndEmploymentData> orgSearchEmployeeDetails(String empname,String empid,String supname,String emptype,String empdesignation,String empstatus);
	

}
