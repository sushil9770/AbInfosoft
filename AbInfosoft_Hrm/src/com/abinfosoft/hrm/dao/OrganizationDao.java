package com.abinfosoft.hrm.dao;

import java.util.List;

import com.abinfosoft.hrm.dto.EmpEmploymentDetails;
import com.abinfosoft.hrm.dto.EmpPersonalDetails;

public interface OrganizationDao {
	
	public List<Long> orgAllEmployeeId(long orgid);
	public List<EmpPersonalDetails> orgAllEmployeePersonalDetails(List<Long> userid);
	public List<EmpEmploymentDetails> oragAllEmployeeEmploymentDetails(List<Long> userid);

}
