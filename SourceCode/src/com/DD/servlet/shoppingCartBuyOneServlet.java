package com.DD.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.shoppingCarService;

/**
 * Servlet implementation class shoppingCartBuyServlet
 */
@WebServlet(description = "购物车单个种类物品结账，前端调用的时候选择几个就调用几次", urlPatterns = { "/shoppingCartBuyServlet" })
public class shoppingCartBuyOneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public shoppingCartBuyOneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String goodCode = request.getParameter("goodCode");
		float money = 0.0f;
		try 
		{
			shoppingCarService scs = new shoppingCarService();
			money = scs.buyOneInShoppingCartS(email, goodCode);
			response.getWriter().write(Float.toString(money));
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
