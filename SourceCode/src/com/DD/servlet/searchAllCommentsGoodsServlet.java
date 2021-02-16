package com.DD.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.orderOperationService;

/**
 * Servlet implementation class searchAllCommentsGoodsServlet
 */
@WebServlet(description = "获取某个商品所有评论Servlet", urlPatterns = { "/searchAllCommentsGoodsServlet" })
public class searchAllCommentsGoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public searchAllCommentsGoodsServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		// 点击操作，因此仅需goodCode参数即可
		String goodCode = request.getParameter("goodCode");
		orderOperationService operationService = new orderOperationService();
		try {
			String json = operationService.searchAllCommentS(goodCode);
			// 由于是点击操作---暂时无需校验
			response.getWriter().write(json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
