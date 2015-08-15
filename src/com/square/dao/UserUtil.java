package com.square.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ResourceBundle;

import com.square.entity.Booking;
import com.square.entity.BookingDetails;
import com.square.entity.GlobalClass;

public abstract class UserUtil {

	private static ResourceBundle rb;
	static
	{
	
		try {
			rb=ResourceBundle.getBundle("square");
			Class.forName(rb.getString("driver"));
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
	}
	public static Connection getConn() throws SQLException
	{
		String url=rb.getString("url");
		String uname=rb.getString("uname");
		Connection conn=DriverManager.getConnection(url,uname,"");
		return conn;
	}
	public static void closeConn(Connection conn) {
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}
	}
	public static int validateUser(String Username,String Password) 
	{
		Connection conn=null;
		try {
			conn = UserUtil.getConn();
			Statement stmt= conn.createStatement();
			ResultSet results=stmt.executeQuery("select count(*) from user where email='"+Username+"' and password='"+Password+"'");
			while(results.next())
			{
				int id=results.getInt(1);
				
				return id;
			}
			
				
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
				UserUtil.closeConn(conn);
		}
		
		
	return 0;
		
	}
	public static void cancelBooking(int bid)
	{

		Connection conn=null;
		try {
			conn = UserUtil.getConn();
			Statement stmt= conn.createStatement();
			stmt.execute("delete from booking where booking_id='"+bid+"'");
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		finally
		{
			UserUtil.closeConn(conn);
		}
		
	
		
	}
	public static void addInMain(int workerid)
	{
		
		Connection conn=null;
		try {
			conn = UserUtil.getConn();
			Statement stmt= conn.createStatement();
			stmt.execute("insert into worker(worker_name,worker_contact_no,worker_category,worker_sex,worker_dob,worker_exp,worker_startdate,"+
			"worker_enddate,worker_ranking,worker_starttime,worker_endtime,worker_avail,worker_rent,worker_image,worker_language,worker_rcount,city,locality)select worker_name,worker_contact_no,worker_category,worker_sex,worker_dob,worker_exp,worker_startdate,"+
			"worker_enddate,worker_ranking,worker_starttime,worker_endtime,worker_avail,worker_rent,worker_image,worker_language,worker_rcount,city,locality from rawworker where worker_id='"+workerid+"'");
			//System.out.println(results.getString(0));	
			
			stmt.execute("delete from rawworker where worker_id='"+workerid+"'");
		
		} catch (SQLException e) {

			e.printStackTrace();
		}
		finally
		{
			UserUtil.closeConn(conn);
		}
		
	}
	public static int fetchUserId(String Username)
	{
		
		
		Connection conn=null;
		try {
			conn = UserUtil.getConn();
			Statement stmt= conn.createStatement();
			ResultSet results=stmt.executeQuery("select * from user where email='"+Username+"'");
			//System.out.println(results.getString(0));
			while(results.next())
			{
				int id=results.getInt(1);
				return id;
			}
				
		
			
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		finally
		{
			UserUtil.closeConn(conn);
		}
		return 0;
	
		
	
	}
	public static int getCategoryId(String category) {
		Connection conn=null;
		try {
			conn = UserUtil.getConn();
			Statement stmt= conn.createStatement();
			ResultSet results=stmt.executeQuery("select cid from categoryname where category='"+category+"'");
			//System.out.println(results.getString(0));
			while(results.next())
			{
				int categoryid=results.getInt(1);
				return categoryid;
			}
				
		
			
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		finally
		{
			UserUtil.closeConn(conn);
		}
		return 0;
	
		
	}
	public static void addInCategory(int categoryId, int workerid,
			String city, String locality) {
		Connection conn=null;
		try {
			conn = UserUtil.getConn();
			Statement stmt= conn.createStatement();
			stmt.execute("insert into category values("+categoryId+","+workerid+",'"+city+"','"+locality+"')");
			
		
			
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		finally
		{
			UserUtil.closeConn(conn);
		}
		
		
	}
	public static void addBooking()
	{
		Connection conn=null;
		try {
			conn = UserUtil.getConn();
			Statement stmt= conn.createStatement();
			Booking b=new Booking();
			b.setBook_address(BookingDetails.book_address);
			b.setBook_cid(BookingDetails.book_cid);
			b.setBook_end_date(BookingDetails.book_end_date);
			b.setBook_start_date(BookingDetails.book_start_date);
			b.setBook_start_time(BookingDetails.book_start_time);
			b.setBook_end_time(BookingDetails.book_end_time);
			b.setBook_uid(GlobalClass.userId);
			b.setBook_locality(BookingDetails.book_locality);
			b.setBook_pincode(BookingDetails.book_pincode);
			b.setBook_wid(BookingDetails.book_wid);
			String query="insert into booking values("+BookingDetails.book_uid+","+BookingDetails.book_wid+",'"+BookingDetails.book_start_date+"','"+BookingDetails.book_end_date+"','"
					+BookingDetails.book_start_time+"','"+BookingDetails.book_end_time+"',"+BookingDetails.book_cid+",'"+BookingDetails.book_locality+"','"+BookingDetails.book_address+"','"
					+BookingDetails.book_pincode+"','','"+BookingDetails.book_city+"')";
			stmt.execute(query);
		
		
			
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		finally
		{
			UserUtil.closeConn(conn);
		}
	
	}
}
