package com.abinfosoft.hrm.action.one;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.abinfosoft.hrm.dao.OrganizationDao;
import com.abinfosoft.hrm.dao.imp.OrganizationDaoImp;
import com.abinfosoft.hrm.virtual.data.holder.EmpPersonalAndEmploymentData;
import com.opensymphony.xwork2.ActionSupport;

public class EmployeeAction  extends ActionSupport implements SessionAware,RequestAware{
	

	private Map session;
	private Map request;
	private String empname;
	private String empsupervisor;
	private String empid;
	private String empdesignation;
	private String employmenttype;
	private String empstatus;
	private List  empnamelist;
	private List  empidlist;
	private List  empsupervisorplist;
	private List  empdesignationlist;
	

	
	public List getEmpdesignationlist() {
	OrganizationDao dao=new  OrganizationDaoImp();
	empdesignationlist=dao.OrgAllEmployeeDesignation();
	return empdesignationlist;
	}



	public void setEmpdesignationlist(List empdesignationlist) {
	this.empdesignationlist = empdesignationlist;
	}


	public List getEmpnamelist() {
	OrganizationDao dao=new  OrganizationDaoImp();
	empnamelist =dao.OrgAllEmployeeName();
	return empnamelist;
	}

	public void setEmpnamelist(List empnamelist) {
	this.empnamelist = empnamelist;
	}

	public List getEmpidlist() {
	OrganizationDao dao=new  OrganizationDaoImp();
	empidlist= dao.OrgAllEmployeeId();
	return empidlist;
	}

	public void setEmpidlist(List empidlist) {
	this.empidlist = empidlist;
	}

	public List getEmpsupervisorplist() {
	OrganizationDao dao=new  OrganizationDaoImp();
	empsupervisorplist= dao.OrgAllEmployeeSupervisor();
	return empsupervisorplist;
	}

	public void setEmpsupervisorplist(List empsupervisorplist) {
	this.empsupervisorplist = empsupervisorplist;
	}
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public String getEmpsupervisor() {
		return empsupervisor;
	}
	public void setEmpsupervisor(String empsupervisor) {
		this.empsupervisor = empsupervisor;
	}

	public String getEmpid() {
		return empid;
	}
	public void setEmpid(String empid) {
		this.empid = empid;
	}
	public String getEmpdesignation() {
		return empdesignation;
	}
	public void setEmpdesignation(String empdesignation) {
		this.empdesignation = empdesignation;
	}
	public String getEmploymenttype() {
		return employmenttype;
	}
	public void setEmploymenttype(String employmenttype) {
		this.employmenttype = employmenttype;
	}
	public String getEmpstatus() {
		return empstatus;
	}
	public void setEmpstatus(String empstatus) {
		this.empstatus = empstatus;
	}
	
	
	
	public String employeelist()
	{
	try {
	OrganizationDao dao=new OrganizationDaoImp();
	List<Long> userid=dao.orgAllEmployeeId(1L);
	List<EmpPersonalAndEmploymentData>list=dao.orgAllEmpPersonalEmploymentDetails(userid);
	request.put("data",list);
	} catch (Exception e) {
	System.out.println("Exception :"+e);
	}
	return "success";
	}
	
	
	public String employeesearch()
	{
	try {
		OrganizationDao dao=new OrganizationDaoImp();
		List<EmpPersonalAndEmploymentData>list =dao.orgSearchEmployeeDetails(getEmpname(),getEmpid(), getEmpsupervisor(), getEmploymenttype(), getEmpdesignation(), getEmpstatus());
		request.put("data",list);
	} catch (Exception e) {
	System.out.println("Exception :"+e);
	}
	return "success";
	}
	
	
	
	public String employeeadd()
	{
	return "success";
	}
	
	
	public String employeeprofile()
	{
	return "success";
	}
	
	
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

    }
