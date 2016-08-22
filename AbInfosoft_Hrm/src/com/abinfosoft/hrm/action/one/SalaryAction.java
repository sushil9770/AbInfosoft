package com.abinfosoft.hrm.action.one;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.abinfosoft.hrm.dao.OrganizationDao;
import com.abinfosoft.hrm.dao.imp.OrganizationDaoImp;
import com.abinfosoft.hrm.dto.EmpPersonalDetails;
import com.opensymphony.xwork2.ActionSupport;

public class SalaryAction extends ActionSupport implements SessionAware,RequestAware {
	
	
	

	private Map session;
	private Map request;
	
	
	
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
	
	 	
	
	
	
	public String add_salary()
	{
		try {
			OrganizationDao dao=new OrganizationDaoImp();
			
			 List<Long>empid= dao.orgAllEmployeeId(1l);
			 List<EmpPersonalDetails>list= dao.orgAllEmployeePersonalDetails(empid);
			 System.err.println(list);
			 request.put("data", list);
			return "success";
			
		} catch (Exception e) {
			System.out.println("Exception :"+e);
			return "error";
		}
		
	}
	
	public String expense()
	{
		try {
			return "success";
		} catch (Exception e) {
			System.out.println("Exception :"+e);
			return "error";
		}
		
	}

}
