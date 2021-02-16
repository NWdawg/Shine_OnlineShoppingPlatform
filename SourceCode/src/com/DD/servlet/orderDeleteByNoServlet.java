package com.DD.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.orderOperationService;

/**
 * Servlet implementation class orderDeleteByNoServlet
 * 从订单号删除订单
 */
@WebServlet("/orderDeleteByNoServlet")
public class orderDeleteByNoServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public orderDeleteByNoServlet() 
    {
        super();
        // TODO Auto-generated constructor stub
    }

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String orderNo = request.getParameter("orderNo");
		orderOperationService oo = new orderOperationService();
		try
		{
			oo.orderDeleteS(orderNo);
			response.getWriter().write("<script type='text/javascript'>alert('删除成功！')</script>");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
