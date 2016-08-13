package com.abinfosoft.hrm.action;



import java.util.Map;
import org.apache.log4j.Logger;
import org.apache.struts2.components.ActionError;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.abinfosoft.hrm.dao.LoginDao;
import com.abinfosoft.hrm.dao.imp.LoginDaoImp;
import com.abinfosoft.hrm.dto.UserCredentials;
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
	private LoginDao dao;
	
	
	        public LoginAction() {
		    System.out.println("Login Action");
	        }
	
	
	        public String  login() {
		    try {
			dao=new  LoginDaoImp();
			UserCredentials userCredentials=dao.userlogin(username, password);
			if(userCredentials.getUsername()==null)
			{
			addActionMessage("You are not valid user!");
			return "input";
			}else{
			if(userCredentials.getUserrole().equals("admin"))
			return "admin-success";
			else
			return "employee-success";
			}
		    } catch (Exception e) {
		    System.out.println("Exception :"+e);
		    return "error";
		    }
	        }
	
	        
	        
	        public String  logout() {
			try {
			return "success";
			} catch (Exception e) {
			System.out.println("Exception :"+e);
			return "error";
			}
			}
		
	
	       public String  admindashboard() {
		   try {
		   return "success";
		   } catch (Exception e) {
		   System.out.println("Exception :"+e);
		   return "error";
		   }
	       }
	       
	       
	       public String  empdashboard() {
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
