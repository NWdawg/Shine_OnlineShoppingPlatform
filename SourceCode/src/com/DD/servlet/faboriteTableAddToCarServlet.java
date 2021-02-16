package com.DD.servlet;


import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.namespace.QName;

import com.DD.dao.shoppingCarDao;
import com.DD.service.shoppingCarService;

/**
 * Servlet implementation class faboriteTableAddToCar
 */
@WebServlet(description = "从收藏夹添加到购物车 /n 有按钮", urlPatterns = { "/faboriteTableAddToCar" })
public class faboriteTableAddToCarServlet extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public faboriteTableAddToCarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }



	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String goodCode = request.getParameter("goodCode"); //添加到购物车中的商品
		String num = request.getParameter("num");
		try
		{
			shoppingCarService scs = new shoppingCarService();
			int result = scs.addGoodsIntoShoppingCarS(goodCode, email, num);
			//result 0代表没有加进去 1代表成功
			if(result == 0)
			{
				response.getWriter().write("<script type='text/javascript'>alert('添加失败！')</script>");
			}
			else
			{
				response.getWriter().write("<script type='text/javascript'>alert('添加成功！')</script>");
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
