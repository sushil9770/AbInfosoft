/*package com.abinfosoft.hrm.action.one;

import java.util.List;

import com.abinfosoft.hrm.dao.EmployeeSalaryDao;
import com.abinfosoft.hrm.dao.imp.EmployeeSalaryDaoImp;
import com.abinfosoft.hrm.dto.EmpDetails;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;



public class JSONDataAction extends ActionSupport {

	private String payment_slot;
	
	List<EmpDetails> list;
	EmployeeSalaryDao dao;
	

	public String employee_list() {
		
	dao=new EmployeeSalaryDaoImp() ;
	list=	dao.getAllEmployeeDetails();
    return Action.SUCCESS;
        }

	public List<EmpDetails> getList() {
		return list;
	}

	public void setList(List<EmpDetails> list) {
		this.list = list;
	}

	
	public String post_request() {
		
		System.err.println("i am herer");
		System.err.println(getPayment_slot()+"***********");
		dao=new EmployeeSalaryDaoImp() ;
		list=	dao.getAllEmployeeDetails();
		
		 return Action.SUCCESS;
		
	}

	public String getPayment_slot() {
		return payment_slot;
	}

	public void setPayment_slot(String payment_slot) {
		this.payment_slot = payment_slot;
	}
	
	
	
	
	}
	
	
*/