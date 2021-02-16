package com.DD.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.orderOperationService;

/**
 * Servlet implementation class searchOrderDetailPQService
 */
@WebServlet(description = "通过店铺名和商品名查询商品", urlPatterns = { "/searchOrderDetailPQService" })
public class searchOrderDetailPQService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public searchOrderDetailPQService() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		orderOperationService operation = new orderOperationService();//创建实例对象
		String email = request.getParameter("email");//获取邮箱
		String shopName = request.getParameter("shopName");//获取店铺名字
		String name =request.getParameter("name");//获取商品名字
		try {
			String result = operation.searchOrderDetailPQS(email, shopName, name);//查询对应商品
			response.getWriter().write(result);//返回商品
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
