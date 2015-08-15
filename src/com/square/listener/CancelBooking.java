package com.square.listener;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.square.dao.UserUtil;

/**
 * Servlet implementation class CancelBooking
 */
public class CancelBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CancelBooking() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int booking_id=Integer.parseInt(request.getParameter("cancel_id"));
		
		System.out.println(booking_id);
		UserUtil.cancelBooking(booking_id);
		String url=response.encodeRedirectURL("bookfrm.htm");
		response.sendRedirect("bookfrm.htm");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
