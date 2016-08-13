package com.abinfosoft.hrm.dao;

import com.abinfosoft.hrm.dto.UserCredentials;

public interface LoginDao {
	
	
	
	public UserCredentials userlogin(String username,String password);

}
