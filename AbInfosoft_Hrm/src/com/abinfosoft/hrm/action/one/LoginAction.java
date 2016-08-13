package com.abinfosoft.hrm.action.one;



import java.util.Map;
import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;



public class LoginAction extends ActionSupport implements SessionAware,RequestAware{

	
	private static org.apache.log4j.Logger log = Logger.getLogger(LoginAction.class);
	private static final long serialVersionUID = 1L;
	

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
	
	 	
	
	private String username;
	private String password;
	
	
	
	public LoginAction() {
		System.out.println("Login Action");
	}
	
	
	public String  login() {
		try {
			
			return "success";
			
		} catch (Exception e) {
		System.out.println("Exception :"+e);
		return "error";
		}
	    }
	
	
	public String  dashboard() {
		try {
			
			return "success";
			
		} catch (Exception e) {
		System.out.println("Exception :"+e);
		return "error";
		}
	    }
	
	
	

	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}




}
