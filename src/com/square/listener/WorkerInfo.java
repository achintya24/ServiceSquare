package com.square.listener;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.square.entity.GlobalClass;

/**
 * Servlet implementation class WorkerInfo
 */
public class WorkerInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WorkerInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String str=request.getParameter("worker_id");
		System.out.println(str);
		String[] arr=str.split("-");
		//System.out.println(arr[3]);
		GlobalClass.money_rent=Double.parseDouble(arr[3]);
		
		if(arr[1].equals("Home Cleaning"))
		{
			GlobalClass.worker_id=Integer.parseInt(arr[0]);
			GlobalClass.category=arr[1];
			GlobalClass.cid=2;
			String url=response.encodeRedirectURL("housefrm.htm");
			response.sendRedirect(url);
		}
		if(arr[1].equals("Plumbing"))
		{
			GlobalClass.worker_id=Integer.parseInt(arr[0]);
			GlobalClass.category=arr[1];
			GlobalClass.cid=1;
			String url=response.encodeRedirectURL("plumberfrm.htm");
			response.sendRedirect(url);
		}
		else if(arr[1].equals("Computer Repair"))
		{
			GlobalClass.worker_id=Integer.parseInt(arr[0]);
			GlobalClass.category=arr[1];
			GlobalClass.cid=4;
			String url=response.encodeRedirectURL("computerfrm.htm");
			response.sendRedirect(url);
		}
		else if(arr[1].equals("Electrical"))
		{
			GlobalClass.worker_id=Integer.parseInt(arr[0]);
			GlobalClass.category=arr[1];
			GlobalClass.cid=3;
			String url=response.encodeRedirectURL("electricalfrm.htm");
			response.sendRedirect(url);
		}
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
