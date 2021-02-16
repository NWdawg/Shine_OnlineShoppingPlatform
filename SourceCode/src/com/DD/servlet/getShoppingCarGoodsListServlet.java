package com.DD.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.shoppingCarService;


/**
 * Servlet implementation class getShoppingCarServlet
 */
@WebServlet(description = "获取购物车所有商品列表", urlPatterns = { "/getShoppingCarGoodsListServlet" })
public class getShoppingCarGoodsListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getShoppingCarGoodsListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//首先进行编码格式设置
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		//首先必须校验用户是否登录，未登录用户，不可执行购物车操作
		if (request.getSession().getAttribute("email").toString()!=null) {
			//前端通过session.getAttribute("email").toString 来获取email
			String email = request.getParameter("email");//获取用户邮箱
			//由于是购物车 页面加载时，$(function()){}---自动加载数据----因此可以无需做安全校验
			shoppingCarService shoppingcar = new shoppingCarService();//建立实例对象
			String result = shoppingcar.findShoppingCarByEmailS(email);//得到购物车列表
			response.getWriter().write(result);//返回购物车列表
		}else{
			//前端获取得到777--标志时进行跳转main.jsp
			response.getWriter().write("777");
			//或者后台直接跳转
			request.getRequestDispatcher("main.jsp").forward(request, response);
		}
	}
}
