package com.DD.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.orderOperationService;

/**
 * Servlet implementation class orderSearchDetailPQServlet
 */
@WebServlet(description = "查找所需商品PQ--条件查询", urlPatterns = { "/orderSearchDetailPQServlet" })
public class orderSearchDetailPQServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public orderSearchDetailPQServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email = request.getParameter("email");
		String shopName = request.getParameter("shopName");
		String name = request.getParameter("name");
		orderOperationService oo = new orderOperationService();
		try
		{
			String detailPQ_json = oo.searchOrderDetailPQS(email, shopName, name);
			response.getWriter().write(detailPQ_json);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
