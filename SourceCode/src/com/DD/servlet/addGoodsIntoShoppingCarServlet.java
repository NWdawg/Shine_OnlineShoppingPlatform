package com.DD.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.shoppingCarService;

@WebServlet(description="添加商品到购物车",urlPatterns="/addGoodsIntoShoppingCarServlet")
public class addGoodsIntoShoppingCarServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//首先设置编码方式
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		// 商品唯一码
		String goodCode = request.getParameter("goodCode");
		// 商品主人邮箱
		String email = request.getParameter("email");
		// 商品数量
		String num = request.getParameter("num");
		shoppingCarService shoppingcar = new shoppingCarService();// 建立实例对象
		int result = shoppingcar.addGoodsIntoShoppingCarS(goodCode, email, num);// 向购物车放入商品
		if (result == 0) {// 添加失败
			response.getWriter().write("777");// 添加失败返回777
		} else {// 添加成功
			response.getWriter().write("666");// 添加成功返回666
		}
	}
}
