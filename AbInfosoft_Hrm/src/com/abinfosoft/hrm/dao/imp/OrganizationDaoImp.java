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
			
		} catch (Exception e) {
			
			System.out.println("Exception :"+e);
		}
		
		return list;
	}

}
