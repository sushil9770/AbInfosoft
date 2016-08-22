package com.abinfosoft.hrm.action.one;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.abinfosoft.hrm.dao.OrganizationDao;
import com.abinfosoft.hrm.dao.imp.OrganizationDaoImp;
import com.abinfosoft.hrm.virtual.data.holder.EmpPersonalAndEmploymentData;
import com.opensymphony.xwork2.ActionSupport;

public class HolidayAction extends ActionSupport implements SessionAware,RequestAware{

	private Map session;
	private Map request;
	
	
	
	private String fromDate;
	private String toDate;
	private String holidayName;
	private String description;
	private String repeatsAnnually;
	private String day;
	
	
	
	
	public String getFromDate() {
		return fromDate;
	}
	public void setFromDate(String fromDate) {
		this.fromDate = fromDate;
	}
	public String getToDate() {
		return toDate;
	}
	public void setToDate(String toDate) {
		this.toDate = toDate;
	}
	public String getHolidayName() {
		return holidayName;
	}
	public void setHolidayName(String holidayName) {
		this.holidayName = holidayName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getRepeatsAnnually() {
		return repeatsAnnually;
	}
	public void setRepeatsAnnually(String repeatsAnnually) {
		this.repeatsAnnually = repeatsAnnually;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
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
		
	public String holidaylist()
	{
	return "success";
	}
	
	
	public String add_holidays()
	{
	return "success";
	}
	
	

	public String save_holiday_details()
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
	
	
	
	
	
	
}
