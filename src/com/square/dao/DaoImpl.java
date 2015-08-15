package com.square.dao;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.jdbc.core.JdbcTemplate;

import com.square.entity.Booking;
import com.square.entity.Feedback;
import com.square.entity.GlobalClass;
import com.square.entity.User;
import com.square.entity.Worker;

public class DaoImpl implements DaoI {

	public void setJtemp(JdbcTemplate jtemp) {
		this.jtemp = jtemp;
	}

	private JdbcTemplate jtemp;

	public int addUserDetails(User user) {
		String sql = "insert into user(email,password,full_name,contactno,sex) values(?,?,?,?,?)";
		jtemp.update(sql, user.getEmail(), user.getPassword(),
				user.getFullname(), user.getContactno(), user.getSex());

		return 0;
	}

	public Set<String> getCategories() {
		String sql = "Select worker_category from worker";
		List<String> lst = jtemp.queryForList(sql, String.class);
		Set<String> set = new HashSet<String>();
		set.addAll(lst);
		return set;

	}

	public int addBooking(Booking book) {

		String sql = "insert into booking(user_id,worker_id,start_date,end_date,start_time,end_time,category_id,locality,address,pincode,booking_id,city)"
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?)";
		jtemp.update(sql, book.getBook_uid(), book.getBook_wid(),
				book.getBook_start_date(), book.getBook_end_date(),
				book.getBook_start_time(), book.getBook_end_time(),
				book.getBook_cid(), book.getBook_locality(),
				book.getBook_address(), book.getBook_pincode(), "",GlobalClass.city);
		return 0;
	}

	@Override
	public int addWorkerDetails(Worker worker) {
	
		String sql = "insert into rawworker values('',?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		jtemp.update(sql, worker.getWname(), worker.getWcontactno(),
				worker.getWcategory(), worker.getWsex(), worker.getWdob(),
				worker.getWexp(), worker.getWstart_date(),
				worker.getWend_date(), 3, worker.getWstart_time(),
				worker.getWend_time(), 1, worker.getWrent(),
				0, worker.getWlanguage(), 0,worker.getCity(),worker.getLocality());
		return 0;
	}

	public List<Map<String, Object>> viewWorkersByCategory(String category,
			String sex) {
		String sql = "select worker_name from worker where worker_category=? or Worker_sex=?";
		Object[] params = { category, sex };
		List<Map<String, Object>> lst = jtemp.queryForList(sql, params);
		return lst;
	}

	public int update(int wid, int wavail) {
		String sql = "update worker set wavail=? where wid=?";
		Object[] params = { wavail, wid };
		return jtemp.update(sql, params);
	}

	public Set<Integer> getIds() {
		String sql = "Select worker_id from worker";
		List<Integer> lst = jtemp.queryForList(sql, Integer.class);
		Set<Integer> set = new HashSet<Integer>();
		set.addAll(lst);
		return set;
	}

	@Override
	public List<Map<String, Object>> viewWorkersByRating(String category) {

		String sql="select w.worker_id,w.worker_name,w.worker_contact_no,w.worker_category,c.locality,c.city,w.worker_sex,"+
				"w.worker_dob,w.worker_startdate,w.worker_enddate,w.worker_avail,w.worker_exp,w.worker_ranking,w.worker_starttime,w.worker_endtime,w.worker_rent,w.worker_image,"+
							"w.worker_language,w.worker_rcount from worker w inner join category c on w.worker_id=c.worker_id where c.city='"+GlobalClass.city+"' and w.worker_category='"+category+"' order by w.worker_ranking DESC";
		
		List<Map<String, Object>> lst = jtemp.queryForList(sql);
		return lst;
	}

	@Override
	public List<Map<String, Object>> viewWorkersByExp(String category) {
		String sql="select w.worker_id,w.worker_name,w.worker_contact_no,w.worker_category,c.locality,c.city,w.worker_sex,"+
				"w.worker_dob,w.worker_startdate,w.worker_enddate,w.worker_avail,w.worker_exp,w.worker_ranking,w.worker_starttime,w.worker_endtime,w.worker_rent,w.worker_image,"+
							"w.worker_language,w.worker_rcount from worker w inner join category c on w.worker_id=c.worker_id where c.city='"+GlobalClass.city+"' and w.worker_category='"+category+"' order by w.worker_exp DESC";
		
		List<Map<String, Object>> lst = jtemp.queryForList(sql);
		return lst;
	}

	@Override
	public int addFeedback() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Map<String, Object>> BookingDetails() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Set<String> client_Worker(String Username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int fetchUser_id() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Map<String, Object>> viewWorkersByPrice(String category) {
		String sql="select w.worker_id,w.worker_name,w.worker_contact_no,w.worker_category,c.locality,c.city,w.worker_sex,"+
				"w.worker_dob,w.worker_startdate,w.worker_enddate,w.worker_avail,w.worker_exp,w.worker_ranking,w.worker_starttime,w.worker_endtime,w.worker_rent,w.worker_image,"+
							"w.worker_language,w.worker_rcount from worker w inner join category c on w.worker_id=c.worker_id where c.city='"+GlobalClass.city+"' and w.worker_category='"+category+"' order by w.worker_rent DESC";
		
		List<Map<String, Object>> lst = jtemp.queryForList(sql);
		return lst;
	}

	@Override
	public List<Map<String, Object>> viewAllEmployees() {
		String sql = "Select * from worker";
		List<Map<String, Object>> lst = jtemp.queryForList(sql);
		return lst;

	}

	@Override
	public List<Map<String, Object>> viewWorkersByDateRange(String start,
			String end) {
	return null;
	}

	@Override
	public List<Map<String, Object>> viewWorkersNearBy(User u, Worker w) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Map<String, Object>> viewBookings() {
		String sql = "select b.booking_id,w.worker_name,c.category,b.start_date,b.end_date, b.start_time,b.end_time,b.city,b.locality,b.address,b.pincode from booking b"
				+ " inner join categoryname c on b.category_id=c.cid inner join worker w on b.worker_id=w.worker_id where b.user_Id='"+ GlobalClass.userId + "'";
		/*String sql = "select * from booking where user_id='"
				+ GlobalClass.userId + "'";*/
		List<Map<String, Object>> lst = jtemp.queryForList(sql);
		return lst;
	}

	@Override
	public List<Map<String, Object>> viewByLocationAndCategory(String location,String category) {
		/*String sql="select w.worker_id,w.worker_name,w.worker_contact_no,w.worker_category,c.locality,c.city,w.worker_sex,"+
	"w.worker_dob,w.worker_exp,w.worker_ranking,w.worker_starttime,w.worker_endtime,w.worker_rent,w.worker_image,"+
				"w.worker_language,w.worker_rcount from worker w join category c on w.worker_id=c.worker_id where c.city='"+GlobalClass.city+"';";*/
		String sql="select w.worker_id,w.worker_name,w.worker_contact_no,w.worker_category,c.locality,c.city,w.worker_sex,"+
	"w.worker_dob,w.worker_startdate,w.worker_enddate,w.worker_avail,w.worker_exp,w.worker_ranking,w.worker_starttime,w.worker_endtime,w.worker_rent,w.worker_image,"+
				"w.worker_language,w.worker_rcount from worker w inner join category c on w.worker_id=c.worker_id where c.city='"+location+"' and w.worker_category='"+category+"' order by w.worker_id";
		List<Map<String, Object>> lst = jtemp.queryForList(sql);
		return lst;
	}

	@Override
	public List<Map<String, Object>> viewAllWorker() {
		String sql = "Select * from rawworker";
		List<Map<String, Object>> lst = jtemp.queryForList(sql);
		return lst;
	}

	@Override
	public void addFeedback(Feedback feedback) {
		String sql="insert into feedbacktable values(?,?,?,?,?)";
		jtemp.update(sql,feedback.getUser_id(),feedback.getFull_name(),feedback.getPhone_no(),feedback.getEmail(),feedback.getMessage());
		
	}

	@Override
	public List<Map<String, Object>> viewAllFeedbacks() {

		String sql="select * from feedbacktable";
		List<Map<String,Object>>lst=jtemp.queryForList(sql);
		return lst;
	}

	@Override
	public List<Map<String, Object>> viewUsers() {
		// TODO Auto-generated method stub
		String sql="select * from user";
		List<Map<String,Object>>lst=jtemp.queryForList(sql);
		return lst;
	}
	@Override
	public boolean paymentverify(String account_no, int exp_month, int exp_year,
			int ccv, double money) {
		
	money=GlobalClass.money_rent;	
		// TODO Auto-generated method stub
	System.out.println(money);
		String sql="select count(*) from card where account_no='"+account_no+"' and exp_month="+(exp_month)+" and exp_year="+exp_year+" and ccv="+ccv+" and money>="+GlobalClass.money_rent;
		int a=jtemp.queryForInt(sql);
		if(a==1)
			return true;
		return false;
		
	}
	@Override
	public List<Map<String, Object>> getReceipt() {
		// TODO Auto-generated method stub
		
		String sql="select wal.user_id,wal.money,w.worker_name,w.worker_contact_no,w.worker_exp,w.worker_startdate from wallet wal inner join worker w on wal.worker_id=w.worker_id where wal.user_id='"+GlobalClass.userId+"'";
		List<Map<String, Object>> lst = jtemp.queryForList(sql);
		return lst;
		
	}
	@Override
	public int paymentCutting(int user_id, int worker_id, double money,String account_no) {
		// TODO Auto-generated method stub
		//money=GlobalClass.money_rent;
		worker_id=GlobalClass.worker_id;
		user_id=GlobalClass.userId;
		System.out.println(GlobalClass.money_rent);
		String sql="insert into wallet(user_id,worker_id,money,account_no) values(?,?,?,?)";
		jtemp.update(sql, user_id,worker_id,GlobalClass.money_rent,account_no);
		
		return 0;
	}

	@Override
	public void updateMoneyInCard(String account_no, int exp_month,
			int exp_year, int ccv, double money) {
		// TODO Auto-generated method stub
		money=GlobalClass.money_rent;
		String query="select money from card where account_no='"+account_no+"'";
		int mon=jtemp.queryForInt(query);
		mon=mon-(int)money;
		money=(double)mon;
		String sql="update card set money="+money+" where account_no='"+account_no+"'";
		jtemp.update(sql);
	}

	

	

}
