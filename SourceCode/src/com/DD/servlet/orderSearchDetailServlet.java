package com.DD.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.orderOperationService;

/**
 * Servlet implementation class orderSearchDetailServlet
 */
@WebServlet(description = "查询订单明细", urlPatterns = { "/orderSearchDetailServlet" })
public class orderSearchDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public orderSearchDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String goodCode = request.getParameter("goodCode");
		orderOperationService oo = new orderOperationService();
		try
		{
			String detail_json = oo.searchOrderDetailS(goodCode);
			response.getWriter().write(detail_json);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

	

}
