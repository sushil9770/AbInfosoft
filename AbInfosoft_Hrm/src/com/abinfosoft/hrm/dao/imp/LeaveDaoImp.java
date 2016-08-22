
package com.abinfosoft.hrm.dao.imp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.abinfosoft.hrm.dao.LeaveDao;
import com.abinfosoft.hrm.db.DBServiceHandler;
import com.abinfosoft.hrm.dto.LeaveTypeDetails;
import com.abinfosoft.hrm.virtual.data.holder.EmpPersonalAndLeaveData;

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
	public List<EmpPersonalAndLeaveData> getAllLeaveRequestDetails() {
		List<EmpPersonalAndLeaveData> list=new ArrayList<EmpPersonalAndLeaveData>();
		try {
			Connection con=null;
			Statement st=null;
			ResultSet rs=null;
			con=DBServiceHandler.getConnection();
			st = con.createStatement();
			rs = st.executeQuery("select a.id,a.fromdate,a.todate,a.description,a.leave_status,a.subject,a.userid,a.leavename ,b.firstname,b.lastname,b.dateofbirth,b.imageurl,b.gender from emp_leave_details a "
					+ " INNER JOIN emp_personal_details b ON a.userid=b.userid");
			while (rs.next()) {
				
				EmpPersonalAndLeaveData leaveRequestDetails=new EmpPersonalAndLeaveData();
				leaveRequestDetails.setId(rs.getInt("id"));
				leaveRequestDetails.setFromdate(rs.getDate("fromdate"));
				leaveRequestDetails.setTodate(rs.getDate("todate"));
				leaveRequestDetails.setDescription(rs.getString("description"));
				leaveRequestDetails.setLeave_status(rs.getString("leave_status"));
				leaveRequestDetails.setSubject(rs.getString("subject"));
				leaveRequestDetails.setUserid(rs.getInt("userid"));
				leaveRequestDetails.setLeavename(rs.getString("leavename"));
				leaveRequestDetails.setFirstname(rs.getString("firstname"));
				leaveRequestDetails.setLastname(rs.getString("lastname"));
				leaveRequestDetails.setDateofbirth(rs.getDate("dateofbirth"));
				leaveRequestDetails.setImageurl(rs.getString("imageurl"));
				leaveRequestDetails.setGender(rs.getString("gender"));
				list.add(leaveRequestDetails);
				
			}
			DBServiceHandler.cleanup(rs,st, con);
		} catch (Exception e) {
			System.out.println("Exception :"+e);
		}
		return list;
	}

	@Override
	public List<String> getAllLeaveName() {
		
		List<String> list=new ArrayList<String>();
		try {
			Connection con=null;
			Statement st=null;
			ResultSet rs=null;
			con=DBServiceHandler.getConnection();
			st = con.createStatement();
			rs = st.executeQuery("select leavename  from abinfo_leave_type_details ");
			while (rs.next()) {
			String leavename=rs.getString("leavename");
			list.add(leavename);
			}
			DBServiceHandler.cleanup(rs,st, con);
		} catch (Exception e) {
		   System.out.println("Exception: "+e);
		}
		
		return list;
	}

}
