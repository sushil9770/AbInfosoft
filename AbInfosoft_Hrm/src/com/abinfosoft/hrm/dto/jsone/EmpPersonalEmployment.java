package com.abinfosoft.hrm.dto.jsone;

import java.util.List;

import com.abinfosoft.hrm.dto.EmpEmploymentDetails;
import com.abinfosoft.hrm.dto.EmpPersonalDetails;

public class EmpPersonalEmployment {
	
	private List<EmpPersonalDetails> empPersonalDetails;
	private List<EmpEmploymentDetails> empEmploymentDetails;
	public List<EmpPersonalDetails> getEmpPersonalDetails() {
		return empPersonalDetails;
	}
	public void setEmpPersonalDetails(List<EmpPersonalDetails> empPersonalDetails) {
		this.empPersonalDetails = empPersonalDetails;
	}
	public List<EmpEmploymentDetails> getEmpEmploymentDetails() {
		return empEmploymentDetails;
	}
	public void setEmpEmploymentDetails(List<EmpEmploymentDetails> empEmploymentDetails) {
		this.empEmploymentDetails = empEmploymentDetails;
	}
	@Override
	public String toString() {
		return "EmpPersonalEmployment [empPersonalDetails=" + empPersonalDetails + ", empEmploymentDetails="
				+ empEmploymentDetails + "]";
	}
	
	

}
