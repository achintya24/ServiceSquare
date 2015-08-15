package com.square.dao;

import java.util.List;
import java.util.Map;
import java.util.Set;










import com.square.entity.Booking;
import com.square.entity.Feedback;
import com.square.entity.User;
import com.square.entity.Worker;

public interface DaoI {

	public int addUserDetails(User user);
	public int addWorkerDetails(Worker  worker);
	public Set<String> getCategories();
	public int update(int wid, int wavail);
	public Set<Integer> getIds();
	public int addFeedback();
	public int addBooking(Booking book);
	public List<Map<String,Object>> BookingDetails();
	 public Set<String> client_Worker(String Username);
	public int fetchUser_id();
	public List<Map<String,Object>> viewUsers();
	public List<Map<String,Object>> viewWorkersByPrice(String category);
	public List<Map<String,Object>> viewWorkersByExp(String category);
	public List<Map<String,Object>> viewWorkersByCategory(String category,String sex);
	public List<Map<String,Object>> viewWorkersByDateRange(String start,String end);
	public List<Map<String,Object>> viewWorkersNearBy(User u,Worker w);
	public List<Map<String, Object>> viewAllWorker();
	public List<Map<String, Object>> viewAllEmployees();
	public List<Map<String, Object>> viewWorkersByRating(String category);
	public List<Map<String,Object>> viewBookings();
	public List<Map<String,Object>> viewByLocationAndCategory(String location, String category);
	public void addFeedback(Feedback feedback);
	public List<Map<String,Object>> viewAllFeedbacks();
	public boolean paymentverify(String account_no,int exp_month,int exp_year,int ccv,double money);
	public int paymentCutting(int user_id,int worker_id,double money,String account_no);
	
	public void updateMoneyInCard(String account_no,int exp_month,int exp_year,int ccv,double money);
	
	public List<Map<String,Object>> getReceipt();
	
	
}
