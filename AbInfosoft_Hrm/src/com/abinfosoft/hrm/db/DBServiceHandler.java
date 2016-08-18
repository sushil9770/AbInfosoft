package com.abinfosoft.hrm.db;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Map;
import java.util.Properties;

import com.opensymphony.xwork2.ActionContext;
public class DBServiceHandler  {
    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch (ClassNotFoundException ex) {
            System.out.println(ex);
        }
    }

    
    
    public static Connection getConnection() throws SQLException {
	      
  	    
    	String dbName="webapp";
    	
        Properties props = new Properties();
         props.setProperty("user", "root");
         props.setProperty("password", "admin");
         String url = "jdbc:mysql://localhost/" + dbName;
         Connection con = DriverManager.getConnection(url, props);

  	   
        return con;
    }

    public static void cleanup(Connection con) {
        try {
            if (con != null) {
                con.close();
            }
            }
        catch (Exception e) {
            System.out.println(e);
           }
           }

    public static void cleanup(Statement st, Connection con) {
        try {
            if (st != null) {
                st.close();
            }
            if (con != null) {
                con.close();
            }
        }
        catch (Exception e) {
            System.out.println(e);
        }
    }

    public static void cleanup(ResultSet rs, Statement st, Connection con) {
        try {
            if (rs != null) {
                rs.close();
            }
            if (st != null) {
                st.close();
            }
            if (con != null) {
                con.close();
            }
        }
        catch (Exception e) {
            System.out.println(e);
        }
    }
}
