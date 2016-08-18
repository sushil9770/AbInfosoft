package com.abinfosoft.hrm.action.jsone;

import java.util.ArrayList;
import java.util.List;

import com.abinfosoft.hrm.dao.OrganizationDao;
import com.abinfosoft.hrm.dao.imp.OrganizationDaoImp;
import com.abinfosoft.hrm.dto.jsone.EmpPersonalEmployment;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Action;


public class OrganizationAction extends  ActionSupport{
	
	List<EmpPersonalEmployment> list=new ArrayList<EmpPersonalEmployment>();

	public List<EmpPersonalEmployment> getList() {
		return list;
	}

	public void setList(List<EmpPersonalEmployment> list) {
		this.list = list;
	}
	
	
	public String employee_list() {
		OrganizationDao dao=new OrganizationDaoImp();
		List<Long> userid=dao.orgAllEmployeeId(1L);
		EmpPersonalEmployment  empPersonalEmployment=new EmpPersonalEmployment();
		empPersonalEmployment.setEmpEmploymentDetails(dao.oragAllEmployeeEmploymentDetails(userid));
		empPersonalEmployment.setEmpPersonalDetails(dao.orgAllEmployeePersonalDetails(userid));
		list.add(empPersonalEmployment);
	    return Action.SUCCESS;
	        }


}
