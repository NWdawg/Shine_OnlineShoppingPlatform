package com.DD.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.orderOperationService;

/**
 * Servlet implementation class orderAddIntoF_From_OServlet
 */
@WebServlet(name = "sorderAddIntoF_From_OServlet", description = "修改订单加入购物车", urlPatterns = { "/sorderAddIntoF_From_OServlet" })
public class orderAddIntoF_From_OServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public orderAddIntoF_From_OServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String email = request.getParameter("email");
		String goodCode = request.getParameter("goodCode");
		String owner = request.getParameter("owner");
		orderOperationService oo = new orderOperationService();
		try
		{
			oo.addIntoFavoriteFromOrderS(goodCode, owner, email);
			response.getWriter().write("<script type='text/javascript'>alert('修改成功！')</script>");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
