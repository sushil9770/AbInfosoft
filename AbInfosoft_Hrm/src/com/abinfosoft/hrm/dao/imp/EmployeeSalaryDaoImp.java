/*package com.abinfosoft.hrm.dao.imp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.abinfosoft.hrm.dao.EmployeeSalaryDao;
import com.abinfosoft.hrm.db.DBServiceHandler;
import com.abinfosoft.hrm.dto.EmpDetails;

public class EmployeeSalaryDaoImp implements EmployeeSalaryDao {

	@Override
	public List<EmpDetails> getAllEmployeeDetails() {
		
		 List<EmpDetails> list=new ArrayList<EmpDetails>();
		 
		 try {
			 
			 Connection con=null;
			 Statement st=null;
			 ResultSet rs=null;
			 con=DBServiceHandler.getConnection();
			 st = con.createStatement();
			 rs = st.executeQuery("select *  from employee_table");
			 while(rs.next())
			 {
				EmpDetails employeeDetails=new EmpDetails();
				employeeDetails.setEmployee_id(rs.getString("employee_id"));
				employeeDetails.setEmployee_name(rs.getString("employee_name"));
				employeeDetails.setEmployee_email(rs.getString("employee_email"));
				employeeDetails.setEmployee_payment_date(rs.getDate("employee_payment_date"));
				employeeDetails.setEmployee_phone(rs.getString("employee_phone"));
				employeeDetails.setId(rs.getInt("id"));
				list.add(employeeDetails);
					 
			 }
			 DBServiceHandler.cleanup(rs, st, con);
			 } catch (Exception e) {
			 System.out.println("Exception :"+e);
			 }
		     return list;
	         }

	
	
	
           }
*/