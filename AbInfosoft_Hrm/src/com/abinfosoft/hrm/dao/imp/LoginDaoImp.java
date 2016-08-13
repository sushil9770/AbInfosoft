package com.abinfosoft.hrm.dao.imp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.abinfosoft.hrm.dao.LoginDao;
import com.abinfosoft.hrm.db.DBServiceHandler;
import com.abinfosoft.hrm.dto.UserCredentials;

public class LoginDaoImp implements LoginDao{

	@Override
	public UserCredentials userlogin(String username, String password) {
		
		Connection con=null;
		Statement st=null;
		ResultSet rs=null;
		UserCredentials userCredentials=new UserCredentials();
		
		try {
			
		con=DBServiceHandler.getConnection();
		st = con.createStatement();
		rs = st.executeQuery("select *  from user_credential  where username='"+username+"' and password = '"+password+"'");
		if (rs.next()) {
			 userCredentials.setId(rs.getInt("id"));
			 userCredentials.setUsername(rs.getString("username"));
			 userCredentials.setUserrole(rs.getString("userrole"));
		}
	} catch (Exception e) {
	System.out.println("Exception :"+e);
	}finally{
	 DBServiceHandler.cleanup(rs, st, con);
	}
	 return userCredentials;
	 }

}
