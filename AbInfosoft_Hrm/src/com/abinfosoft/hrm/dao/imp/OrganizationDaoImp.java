package com.abinfosoft.hrm.dao.imp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.abinfosoft.hrm.dao.OrganizationDao;
import com.abinfosoft.hrm.db.DBServiceHandler;
import com.abinfosoft.hrm.dto.EmpEmploymentDetails;
import com.abinfosoft.hrm.dto.EmpPersonalDetails;
import com.abinfosoft.hrm.virtual.data.holder.EmpPersonalAndEmploymentData;

public class OrganizationDaoImp implements OrganizationDao {
	
	@Override
	public List<Long> orgAllEmployeeId(long orgid) {
		
		List<Long> list =new ArrayList<Long>();
		
		try {
		
			
			Connection con=null;
			Statement st=null;
		    ResultSet rs=null;
		    con=DBServiceHandler.getConnection();
		    st = con.createStatement();
		    rs = st.executeQuery("select id  from user_credentials where orgid="+orgid+"");
		    while (rs.next()) {
		     long userid=rs.getInt("id");
		     list.add(userid);
			}
			
		    DBServiceHandler.cleanup(rs, st, con);
			} catch (Exception e) {
			System.out.println("Exception :"+e);
		    }
		   
		return list;
	       }

	@Override
	public List<EmpPersonalDetails> orgAllEmployeePersonalDetails(List<Long> userid) {
		List<EmpPersonalDetails> list=new ArrayList<EmpPersonalDetails>();
		
		try {
			Connection con=null;
			Statement st=null;
		    ResultSet rs=null;
		    con=DBServiceHandler.getConnection();
		    st = con.createStatement();
		    
		    for (int i = 0; i < userid.size(); i++) {
		    rs = st.executeQuery("select *  from emp_personal_details where userid="+userid.get(i)+"");
		    if(rs.next())
		    {
		    	EmpPersonalDetails employeePersonalDetails=new EmpPersonalDetails();
		    	employeePersonalDetails.setFirstname(rs.getString("firstname"));
		    	employeePersonalDetails.setLastname(rs.getString("lastname"));
		    	employeePersonalDetails.setDateofbirth(rs.getDate("dateofbirth"));
		    	employeePersonalDetails.setGender(rs.getString("gender"));
		    	employeePersonalDetails.setImageurl(rs.getString("imageurl"));
		    	employeePersonalDetails.setUserid(rs.getInt("userid"));
		    	list.add(employeePersonalDetails);
		    }
		    }
		    DBServiceHandler.cleanup(rs, st, con);
		} catch (Exception e) {
			
			System.out.println("Exception :"+e);
		}
		
		return list;
	}

	@Override
	public List<EmpEmploymentDetails> oragAllEmployeeEmploymentDetails(List<Long> userid) {
       List<EmpEmploymentDetails> list=new ArrayList<EmpEmploymentDetails>();
		
		try {
			Connection con=null;
			Statement st=null;
		    ResultSet rs=null;
		    con=DBServiceHandler.getConnection();
		    st = con.createStatement();
		    
		    for (int i = 0; i < userid.size(); i++) {
		    rs = st.executeQuery("select *  from emp_employment_details where userid="+userid.get(i)+"");
		    if(rs.next())
		    {
		    	EmpEmploymentDetails employeeEmploymentDetails=new EmpEmploymentDetails();
		    	employeeEmploymentDetails.setCompanyaddress(rs.getString("companyaddress"));
		    	employeeEmploymentDetails.setCompanycontactno(rs.getString("companycontactno"));
		    	employeeEmploymentDetails.setCompanyname(rs.getString("companyname"));
		    	employeeEmploymentDetails.setDateofjoining(rs.getDate("dateofjoining"));
		    	employeeEmploymentDetails.setDateofrelieving(rs.getDate("dateofrelieving"));
		    	employeeEmploymentDetails.setDesignation(rs.getString("designation"));
		    	employeeEmploymentDetails.setId(rs.getInt("id"));
		    	employeeEmploymentDetails.setJobtype(rs.getString("jobtype"));
		    	employeeEmploymentDetails.setReasonofleaving(rs.getString("reasonofleaving"));
		    	employeeEmploymentDetails.setStatus(rs.getString("status"));
		    	employeeEmploymentDetails.setSupervisorname(rs.getString("supervisorname"));
		    	employeeEmploymentDetails.setUserid(rs.getInt("userid"));
		    	employeeEmploymentDetails.setEmpid(rs.getString("empid"));
		    
		    	list.add(employeeEmploymentDetails);
		    }
		    }
		    DBServiceHandler.cleanup(rs, st, con);	
		} catch (Exception e) {
			
			System.out.println("Exception :"+e);
		}
		
		return list;
	}

	
	
	
	
	@Override
	public List<EmpPersonalAndEmploymentData> orgAllEmpPersonalEmploymentDetails(List<Long> userid) {
	List<EmpPersonalAndEmploymentData> list=new ArrayList<EmpPersonalAndEmploymentData>();
	try {
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	con=DBServiceHandler.getConnection();
	st = con.createStatement();
	for (int i = 0; i < userid.size(); i++) {
	rs = st.executeQuery("select a.firstname,a.lastname,a.dateofbirth,a.imageurl,a.gender,b.companyname,b.companyaddress,b.companycontactno,b.dateofjoining,"+
	" b.dateofrelieving,b.dateofrelieving,b.designation,b.jobtype,b.reasonofleaving,b.userid,b.status,b.supervisorname,b.empid from emp_personal_details a "
	+ "INNER JOIN emp_employment_details b ON a.userid=b.userid  where a.userid="+userid.get(i)+"");
	if(rs.next())
	{
				    	EmpPersonalAndEmploymentData emp=new EmpPersonalAndEmploymentData();
				    	emp.setCompanyaddress(rs.getString("companyaddress"));
				    	emp.setCompanycontactno(rs.getString("companycontactno"));
				    	emp.setCompanyname(rs.getString("companyname"));
				    	emp.setDateofbirth(rs.getDate("dateofbirth"));
				    	emp.setDateofjoining(rs.getDate("dateofjoining"));
				    	emp.setDateofrelieving(rs.getDate("dateofrelieving"));
				    	emp.setDesignation(rs.getString("designation"));
				    	emp.setEmpid(rs.getString("empid"));
				    	emp.setFirstname(rs.getString("firstname"));
				    	emp.setGender(rs.getString("gender"));
				    	emp.setImageurl(rs.getString("imageurl"));
				    	emp.setJobtype(rs.getString("jobtype"));
				    	emp.setLastname(rs.getString("lastname"));
				    	emp.setReasonofleaving(rs.getString("reasonofleaving"));
				    	emp.setStatus(rs.getString("status"));
				    	emp.setSupervisorname(rs.getString("supervisorname"));
				    	emp.setUserid(rs.getInt("userid"));
				    	list.add(emp);
	}
	}
	DBServiceHandler.cleanup(rs, st, con);
	} catch (Exception e) {
	System.out.println("Exception :"+e);
	}
	return list;
	}

	
	
	
	
	@Override
	public List<String> OrgAllEmployeeName() {
		List<String> list=new ArrayList<String>();
		try {
		Connection con=null;
		Statement st=null;
		ResultSet rs=null;
		con=DBServiceHandler.getConnection();
		st = con.createStatement();
		rs = st.executeQuery("select firstname , lastname from emp_personal_details");
		while (rs.next()) {
		String emp=rs.getString("firstname")+" "+rs.getString("lastname");
		list.add(emp);
		}
		DBServiceHandler.cleanup(rs, st, con);
		} catch (Exception e) {
		System.out.println("Exception :"+e);
		}
		return list;
	}

	
	
	
	@Override
	public List<String> OrgAllEmployeeId() {
		List<String> list=new ArrayList<String>();
		try {
		Connection con=null;
		Statement st=null;
		ResultSet rs=null;
		con=DBServiceHandler.getConnection();
		st = con.createStatement();
		rs = st.executeQuery("select empid from emp_employment_details");
		while (rs.next()) {
		String emp=rs.getString("empid");
		list.add(emp);
		}
		DBServiceHandler.cleanup(rs, st, con);
		} catch (Exception e) {
		System.out.println("Exception :"+e);
		}
		return list;
	}


	
	
	
	@Override
	public List<String> OrgAllEmployeeSupervisor() {
		List<String> list=new ArrayList<String>();
		try {
		Connection con=null;
		Statement st=null;
		ResultSet rs=null;
		con=DBServiceHandler.getConnection();
		st = con.createStatement();
		rs = st.executeQuery("select DISTINCT  supervisorname from emp_employment_details");
		while (rs.next()) {
		String emp=rs.getString("supervisorname");
		list.add(emp);
		}
		DBServiceHandler.cleanup(rs, st, con);
		} catch (Exception e) {
		System.out.println("Exception :"+e);
		}
		return list;
	    }

	@Override
	public List<String> OrgAllEmployeeDesignation() {
		List<String> list=new ArrayList<String>();
		try {
		Connection con=null;
		Statement st=null;
		ResultSet rs=null;
		con=DBServiceHandler.getConnection();
		st = con.createStatement();
		rs = st.executeQuery("select designation from emp_employment_details");
		while (rs.next()) {
		String emp=rs.getString("designation");
		list.add(emp);
		}
		DBServiceHandler.cleanup(rs, st, con);
		} catch (Exception e) {
		System.out.println("Exception :"+e);
		}
		return list;
	    }

	@Override
	public List<EmpPersonalAndEmploymentData> orgSearchEmployeeDetails(String empname, String empid, String supname,
			String emptype, String empdesignation, String empstatus) {
		List<EmpPersonalAndEmploymentData> list=new ArrayList<EmpPersonalAndEmploymentData>();
		int count = 0 ;
		String sql;
		String sql3=" ";
		String sql4=" ";
		String sql5=" ";
		String sql6=" ";
		String sql7=" ";
		String sql8=" ";
		String sql9=" ; ";
		
		try {
			Connection con=null;
			Statement st=null;
			ResultSet rs=null;
			con=DBServiceHandler.getConnection();
			st = con.createStatement();
			 
			String sql1 = "select a.firstname,a.lastname,a.dateofbirth,a.imageurl,a.gender,b.companyname,b.companyaddress,b.companycontactno,b.dateofjoining,"+
					" b.dateofrelieving,b.dateofrelieving,b.designation,b.jobtype,b.reasonofleaving,b.userid,b.status,b.supervisorname,b.empid from emp_personal_details a "
					+ "INNER JOIN emp_employment_details b ON a.userid=b.userid";
			if(empname!=null||empid!=null||supname!=null||emptype!=null||empdesignation!=null||empstatus!=null)
			{
				if(!empname.equals("-1"))
				{  
				String sql2;
				if(count==0)
				{
				sql2=" where ";
				}else
				{
				sql2=" and ";
				}
				count=1+count;
				String[] str=empname.split(" ");
				sql3=sql2+" "+"a.firstname='"+str[0]+"'  and a.lastname= '"+str[1]+"' ";
				}
				if(!empid.equals("-1"))
				{   
				String sql2;
				if(count==0)
				{
				sql2=" where ";
				}else
				{
				sql2=" and ";
				}
				count=1+count;
				sql4= sql2+" b.empid = '"+empid +"'";
				}
				if(!supname.equals("-1"))
				{   String sql2;
				if(count==0)
				{
				sql2=" where ";
				}else
				{
				sql2=" and ";
				}
				count=1+count;
				sql5= sql2+" b.supervisorname = '"+supname +"'";
				}
				if(emptype!=null)
				{
				String sql2;
				if(count==0)
				{
				sql2=" where ";
				}else
				{
				sql2=" and ";
				}
				count=1+count;
				sql6= sql2+" b.jobtype = '"+emptype +"'";
				}
				if(!empdesignation.equals("-1"))
				{   String sql2;
				if(count==0)
				{
				sql2=" where ";
				}else
				{
				sql2=" and ";
				}
				count=1+count;
				sql7= sql2+" b.designation = '"+empdesignation +"'";
				}
				if(empstatus!=null)
				{
				String sql2;
				if(count==0)
				{
				sql2=" where ";
				}else
				{
				sql2=" and ";
				}
				count=1+count;
				if(!empstatus.equals("All"))
				sql8= sql2+" b.status = '"+empstatus +"'";
				else
					sql8= sql2+" b.status IN ('Active','In-Active')";
				}
			    }
			
			    sql=sql1+" "+sql3+" "+sql4+" "+sql5+" "+sql6+" "+sql7+" "+sql8+" "+sql9  ;
			    rs = st.executeQuery(sql);
			    while (rs.next()) {
		    	EmpPersonalAndEmploymentData emp=new EmpPersonalAndEmploymentData();
		    	emp.setCompanyaddress(rs.getString("companyaddress"));
		    	emp.setCompanycontactno(rs.getString("companycontactno"));
		    	emp.setCompanyname(rs.getString("companyname"));
		    	emp.setDateofbirth(rs.getDate("dateofbirth"));
		    	emp.setDateofjoining(rs.getDate("dateofjoining"));
		    	emp.setDateofrelieving(rs.getDate("dateofrelieving"));
		    	emp.setDesignation(rs.getString("designation"));
		    	emp.setEmpid(rs.getString("empid"));
		    	emp.setFirstname(rs.getString("firstname"));
		    	emp.setGender(rs.getString("gender"));
		    	emp.setImageurl(rs.getString("imageurl"));
		    	emp.setJobtype(rs.getString("jobtype"));
		    	emp.setLastname(rs.getString("lastname"));
		    	emp.setReasonofleaving(rs.getString("reasonofleaving"));
		    	emp.setStatus(rs.getString("status"));
		    	emp.setSupervisorname(rs.getString("supervisorname"));
		    	emp.setUserid(rs.getInt("userid"));
		    	list.add(emp);
			    }
			    DBServiceHandler.cleanup(rs, st, con);
		        } catch (Exception e) {
			    System.out.println("Exception :"+e);
		        }
		        return list;
	            }
	            }
