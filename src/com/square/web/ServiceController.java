package com.square.web;

import java.awt.print.Book;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.square.dao.DaoI;
import com.square.entity.Booking;
import com.square.entity.BookingDetails;
import com.square.entity.GlobalClass;
import com.square.entity.Payment;
import com.square.entity.RadioCategory;
import com.square.entity.User;
import com.square.entity.UserRequest;
import com.square.entity.Worker;


@Controller
public class ServiceController {

	
	private DaoI dao;
	
@Autowired
	public void setDao(DaoI dao) {
		this.dao = dao;
	}


	@RequestMapping(value="indexfrm.htm", method=RequestMethod.GET)
	public String indexFrm(Model model)
	{
	
		model.addAttribute("userrequest",new UserRequest());
		return "index";
	}
	@RequestMapping(value="add.htm", method=RequestMethod.GET)
	public String addEmployeeFrm(Model model)
	{
	
		model.addAttribute("user",new User());
		return "AddFrm";
	}
	@RequestMapping(value="faqfrm.htm", method=RequestMethod.GET)
	public String viewFaqFrm(Model model)
	{
	
		
		return "faq";
	}
	@RequestMapping(value="addclientdetails.htm", method=RequestMethod.POST)
	public String addClientDetails(@ModelAttribute("user")User user,Model model)
	{
		//System.out.println(user.getEmail());
		//model.addAttribute("userrequest",new UserRequest());
		dao.addUserDetails(user);
		return "index1";
	}
	@RequestMapping(value="addworkerfrm.htm", method=RequestMethod.GET)
	public String addWorkerForm(Model model)
	{
	
		model.addAttribute("worker",new Worker());
		return "WorkerForm1";
	}
	@RequestMapping(value="addworkerdetails.htm", method=RequestMethod.POST)
	public String addWorkerDetails(@ModelAttribute("worker1")Worker worker,Model model)
	{
		dao.addWorkerDetails(worker);
		model.addAttribute("msg","Successfully Application has been sent!!");
		return "WorkerForm1";
	}
	@RequestMapping(value="loginfrm.htm", method=RequestMethod.GET)
	public String loginUserForm(Model model)
	{
		model.addAttribute("userrequest",new UserRequest());
		//model.addAttribute("worker",new Worker());
		return "LoginPage";
	}
	@RequestMapping(value="viewcat.htm",method=RequestMethod.GET)
	public String DisplaycatFrm(Model model){
		model.addAttribute("worker", new Worker());
		model.addAttribute("clist", dao.getCategories());
		return "WCatFrm";
	}
	
	@RequestMapping(value="wcat.htm",method=RequestMethod.POST)
	public String viewCatWork(@ModelAttribute("worker")Worker w,Model model){
		List<Map<String, Object>> lst=dao.viewWorkersByCategory(w.getWcategory(), w.getWsex());
		model.addAttribute("elist",lst);
		return "WCatFrm";
	}
	
	@RequestMapping(value="viewall.htm", method=RequestMethod.GET)
	public String viewAllWorkers(@ModelAttribute("worker")Worker worker,Model model)
	{
		model.addAttribute("wlist", dao.viewAllEmployees());
		return "ViewAllEmployee1";
	}
	@RequestMapping(value="viewall1.htm", method=RequestMethod.GET)
	public String viewAllWorkers1(@ModelAttribute("worker")Worker worker,Model model)
	{
		model.addAttribute("wlist", dao.viewAllEmployees());
		return "ViewAllEmployee";
	}
	UserRequest userrequest;
	@RequestMapping(value="viewbycategory.htm", method=RequestMethod.GET)
	public String viewbycat(@ModelAttribute("userrequest")UserRequest user,Model model)
	{
		GlobalClass.city=user.getLocationid();
		model.addAttribute("radiob",new RadioCategory());
		
		
		userrequest=user;
		model.addAttribute("viewall",dao.viewByLocationAndCategory(user.getLocationid(),user.getCategory()));
		
		//System.out.println(userrequest.getCategory()+" "+ userrequest.getLocationid());
		/*model.addAttribute("sortByRating", dao.viewWorkersByRating(user.getCategory()));
		model.addAttribute("sortByExperience", dao.viewWorkersByExp(user.getCategory()));*/
		
		return "ViewUserForm1";
	}	
	@RequestMapping(value="viewbycategory1.htm", method=RequestMethod.GET)
	public String viewbycat1(@ModelAttribute("radiob")RadioCategory radio, Model model)
	{

		
		String str=radio.getSortby();
		if(str.equals("rating"))
			{
			model.addAttribute("sortByRating", dao.viewWorkersByRating(userrequest.getCategory()));
				
			}
		else if(str.equals("experience")){
			model.addAttribute("sortByExperience", dao.viewWorkersByExp(userrequest.getCategory()));
			
		}
		else if(str.equals("price"))
		{
			model.addAttribute("sortByPrice", dao.viewWorkersByPrice(userrequest.getCategory()));	
		}
		else
		{
			model.addAttribute("viewall", dao.viewByLocationAndCategory(userrequest.getLocationid(),userrequest.getCategory()));
		}
		return "ViewUserForm1";
		/*model.addAttribute("category", userrequest.getCategory());
		model.addAttribute("location", userrequest.getLocationid());
		//System.out.println(userrequest.getCategory()+" "+ userrequest.getLocationid());
		model.addAttribute("sortByRating", dao.viewWorkersByRating(userrequest.getCategory()));
		model.addAttribute("sortByExperience", dao.viewWorkersByExp(userrequest.getCategory()));
		*/
		//return ;
	}
	@RequestMapping(value="newuser.htm", method=RequestMethod.GET)
	public String newUserRegistration(Model model)
	{
	
		model.addAttribute("user",new User());
		return "reg";
	}
	@RequestMapping(value="plumberfrm.htm", method=RequestMethod.GET)
	public String newPlumberFrm(Model model)
	{
		
		model.addAttribute("plumber",new Booking());
		return "plumber";
	}
	
	@RequestMapping(value="computerfrm.htm", method=RequestMethod.GET)
	public String newComputerFrm(Model model)
	{
		
		model.addAttribute("plumber",new Booking());
		return "computer";
	}
	
	@RequestMapping(value="housefrm.htm", method=RequestMethod.GET)
	public String newHouseFrm(Model model)
	{
		
		model.addAttribute("plumber",new Booking());
		return "house";
	}
	
	@RequestMapping(value="electricalfrm.htm", method=RequestMethod.GET)
	public String newelectricalFrm(Model model)
	{
		
		model.addAttribute("plumber",new Booking());
		return "electrical";
	}
	@RequestMapping(value="gohome.htm", method=RequestMethod.GET)
	public String homePage(Model model)
	{
		model.addAttribute("userrequest",new UserRequest());
		
		return "index";
	}
	@RequestMapping(value="newWorkerform1.htm", method=RequestMethod.GET)
	public String newWorkerForm(Model model)
	{
		//model.addAttribute("userrequest",new UserRequest());
	model.addAttribute("worker1",new Worker());
		return "WorkerForm1";
	}
	@RequestMapping(value="viewuser.htm",method=RequestMethod.GET)
	public String viewUsers(Model model){
		List<Map<String, Object>> lst=dao.viewUsers();
		model.addAttribute("wlist",lst);
		return "ViewUsers";
	}
	@RequestMapping(value="newWorkerform.htm", method=RequestMethod.GET)
	public String newWorkerForm1(Model model)
	{
		//model.addAttribute("userrequest",new UserRequest());
		model.addAttribute("worker1",new Worker());
		return "WorkerForm";
	}
	
	@RequestMapping(value="admin.htm", method=RequestMethod.GET)
	public String homePage1(Model model)
	{	
		System.out.println("Hello");
		return "AdminIndex";
	}
	
	
	//payment---------------------
	@RequestMapping(value = "paymentform.htm", method = RequestMethod.POST)
	public String viewPaymentform(@ModelAttribute("book") Booking book,Model model) {
		book.setBook_uid(GlobalClass.userId);
		book.setBook_wid(GlobalClass.worker_id);
		book.setBook_cid(GlobalClass.cid);
		BookingDetails.book_uid=GlobalClass.userId;
		BookingDetails.book_wid=GlobalClass.worker_id;
		BookingDetails.book_cid=GlobalClass.cid;
		BookingDetails.book_address=book.getBook_address();
		BookingDetails.book_category=GlobalClass.category;
		BookingDetails.book_city=GlobalClass.city;
		BookingDetails.book_start_date=book.getBook_start_date();
		BookingDetails.book_end_date=book.getBook_end_date();
		BookingDetails.book_start_time=book.getBook_start_time();
		BookingDetails.book_end_time=book.getBook_end_time();
		BookingDetails.book_locality=book.getBook_locality();
		BookingDetails.book_pincode=book.getBook_pincode();
		//dao.addBooking(book);
		
		model.addAttribute("payment",new Payment());
		//model.addAttribute("book", new Booking());
		//System.out.println("1");
		return "payment";
	}
	
	
	
	@RequestMapping(value="paymentverification.htm", method = RequestMethod.POST)
	public String viewPaymentform(@ModelAttribute("payment")Payment payment,@ModelAttribute("book") Booking book,Model model) {
		//model.addAttribute("book", new Booking());
		//System.out.println("1");
	//System.out.println("hello");
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
		
	if(dao.paymentverify(payment.getAccount_no(),payment.getExp_month(),payment.getExp_year(),payment.getCcv(),payment.getMoney())){
		
		dao.paymentCutting(payment.getUser_id(),payment.getWorker_id(),payment.getMoney(),payment.getAccount_no());
		
		dao.updateMoneyInCard(payment.getAccount_no(), payment.getExp_month(), payment.getExp_year(), payment.getCcv(), payment.getMoney());
		dao.addBooking(b);
		return "ThankYou";
			
	}
	
		return "err";
	}
	
	
}
