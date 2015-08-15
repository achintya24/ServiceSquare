package com.square.listener;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.square.dao.UserUtil;

/**
 * Servlet implementation class AddInMain
 */
public class AddInMain extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddInMain() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String str=request.getParameter("worker_id");
		String[] arr=str.split("-");
		int workerid=Integer.parseInt(arr[0]);
		UserUtil.addInMain(workerid);
		int categoryId=UserUtil.getCategoryId(arr[1]);
		UserUtil.addInCategory(categoryId,workerid,arr[2],arr[3]);
		String url=response.encodeRedirectURL("newworker.htm");
		response.sendRedirect("newworker.htm");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
