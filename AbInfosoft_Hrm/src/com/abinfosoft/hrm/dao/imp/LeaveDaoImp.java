
package com.abinfosoft.hrm.dao.imp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.abinfosoft.hrm.dao.LeaveDao;
import com.abinfosoft.hrm.db.DBServiceHandler;
import com.abinfosoft.hrm.dto.LeaveRequestDetails;
import com.abinfosoft.hrm.dto.LeaveTypeDetails;

public class LeaveDaoImp implements LeaveDao{

	@Override
	public void addLeaveDetails(String leavename, String description,String leavedays) {
		try {
			Connection con=null;
			Statement st=null;
			con=DBServiceHandler.getConnection();
			st = con.createStatement();
			 st.execute(" insert into abinfo_leave_type_details (leavename,leavedescription,leavedays ) values('"+leavename+"' , '"+description+"',"+leavedays+")");
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
			leaveTypeDetails.setLeavedays(rs.getInt("leavedays"));
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
			st.execute("delete from abinfo_leave_type_details where id="+leaveid+"");
			DBServiceHandler.cleanup(st, con);
		} catch (Exception e) {
			System.out.println("Exception :"+e);
		}
		
	}

	@Override
	public List<LeaveRequestDetails> getAllLeaveRequestDetails() {
		List<LeaveRequestDetails> list=new ArrayList<LeaveRequestDetails>();
		try {
			Connection con=null;
			Statement st=null;
			ResultSet rs=null;
			con=DBServiceHandler.getConnection();
			st = con.createStatement();
			rs = st.executeQuery("select * from emp_leave_details");
			while (rs.next()) {
				
				LeaveRequestDetails leaveRequestDetails=new LeaveRequestDetails();
				leaveRequestDetails.setId(rs.getInt("id"));
				leaveRequestDetails.setFromdate(rs.getDate("fromdate"));
				leaveRequestDetails.setTodate(rs.getDate("todate"));
				leaveRequestDetails.setDescription(rs.getString("description"));
				leaveRequestDetails.setLeave_status(rs.getString("leave_status"));
				leaveRequestDetails.setSubject(rs.getString("subject"));
				leaveRequestDetails.setUserid(rs.getInt("userid"));
				leaveRequestDetails.setLeavename(rs.getString("leavename"));
				
				list.add(leaveRequestDetails);
				
			}
			
		} catch (Exception e) {
			System.out.println("Exception :"+e);
		}
		return list;
	}

}
