
package com.abinfosoft.hrm.dao.imp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.abinfosoft.hrm.dao.LeaveDao;
import com.abinfosoft.hrm.db.DBServiceHandler;
import com.abinfosoft.hrm.dto.LeaveTypeDetails;

public class LeaveDaoImp implements LeaveDao{

	@Override
	public void addLeaveDetails(String leavename, String description) {
		try {
			Connection con=null;
			Statement st=null;
			con=DBServiceHandler.getConnection();
			st = con.createStatement();
			 st.execute(" insert into abinfo_leave_type_details (leavename,leavedescription ) values('"+leavename+"' , '"+description+"')");
			DBServiceHandler.cleanup( st, con);
		} catch (Exception e) {
			System.out.println("Exception :"+e);
		}
		
	}

	@Override
	public List<LeaveTypeDetails> getAllLeaveList() {
		List<LeaveTypeDetails> list=new ArrayList<LeaveTypeDetails>();
		try {
		Connection con=null;
		Statement st=null;
		ResultSet rs=null;
		con=DBServiceHandler.getConnection();
		st = con.createStatement();
		rs = st.executeQuery("select * from abinfo_leave_type_details");
		while (rs.next()) {
			LeaveTypeDetails leaveTypeDetails=new LeaveTypeDetails();
			leaveTypeDetails.setId(rs.getInt("id"));
			leaveTypeDetails.setLeavename(rs.getString("leavename"));
			leaveTypeDetails.setLeavedescription(rs.getString("leavedescription"));
			leaveTypeDetails.setLeavetype(rs.getString("leavetype"));
		
		list.add(leaveTypeDetails);
		}
		DBServiceHandler.cleanup(rs, st, con);
		} catch (Exception e) {
		System.out.println("Exception :"+e);
		}
		return list;
	}

	@Override
	public void deleteLeave(String leaveid) {
		try {
			
			Connection con=null;
			Statement st=null;
			con=DBServiceHandler.getConnection();
			st = con.createStatement();
			System.err.println(leaveid+"***");
			st.execute("delete from abinfo_leave_type_details where id="+leaveid+"");
			DBServiceHandler.cleanup(st, con);
		} catch (Exception e) {
			System.out.println("Exception :"+e);
		}
		
	}

}
