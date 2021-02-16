package com.DD.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.orderOperationService;

/**
 * Servlet implementation class orderShowSerlet
 * 显示所有订单
 */
@WebServlet("/orderShowSerlet")
public class orderShowSerlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public orderShowSerlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String email = request.getParameter("email");
		
		orderOperationService oo = new orderOperationService();
		try 
		{
			String orderList_json = oo.orderListSearchS(email);
			response.getWriter().write(orderList_json);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}

	

}
