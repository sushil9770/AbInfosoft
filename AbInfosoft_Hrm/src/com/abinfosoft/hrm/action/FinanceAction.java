package com.abinfosoft.hrm.action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class FinanceAction extends ActionSupport implements SessionAware,RequestAware {
	
	
	

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
	
	 	
	
	
	
	public String emp_salary()
	{
		try {
			System.out.println("i amhere");
			
			return "success";
		} catch (Exception e) {
			System.out.println("Exception :"+e);
			return "error";
		}
		
	}
	

}
