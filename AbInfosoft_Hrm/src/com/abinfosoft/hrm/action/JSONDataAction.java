package com.abinfosoft.hrm.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.abinfosoft.hrm.dto.EmployeeDetails;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;



public class JSONDataAction extends ActionSupport {

	
	
	List<EmployeeDetails> list=new ArrayList<EmployeeDetails>();

	public String execute() {
		
		
		EmployeeDetails e=new EmployeeDetails();
		e.setEmployee_email("sushil");
		e.setEmployee_id("123");
		e.setEmployee_payment_date(new Date());
		e.setEmployee_phone("123456789");
		
		list.add(e);
               return Action.SUCCESS;
        }

	public List<EmployeeDetails> getList() {
		return list;
	}

	public void setList(List<EmployeeDetails> list) {
		this.list = list;
	}

	
	
	
	
}