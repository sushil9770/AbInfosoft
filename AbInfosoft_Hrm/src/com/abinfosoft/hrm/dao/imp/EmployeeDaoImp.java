package com.abinfosoft.hrm.dao.imp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.abinfosoft.hrm.dao.EmployeeDao;
import com.abinfosoft.hrm.db.DBServiceHandler;

public class EmployeeDaoImp implements EmployeeDao {

	@Override
	public void deleteemployee(String empid) {
		try {
			
			try {
				Connection con=null;
				Statement st=null;
				ResultSet rs=null;
				con=DBServiceHandler.getConnection();
				st = con.createStatement();
				
				 st.execute("delete from user_credentials where id="+empid+"");
					DBServiceHandler.cleanup( st, con);
				
			} catch (Exception e) {
				System.out.println("Exception:"+e);
			}
			
		} catch (Exception e) {
			System.out.println("Exception :"+e);
		}
		
	}

}
