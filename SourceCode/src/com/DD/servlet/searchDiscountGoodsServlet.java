package com.DD.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.goodsSearchService;

/**
 * Servlet implementation class searchDiscountGoodsServlet
 */
@WebServlet(description = "寻找打折商品", urlPatterns = { "/searchDiscountGoodsServlet" })
public class searchDiscountGoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public searchDiscountGoodsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//首先设置编码格式
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		goodsSearchService goodsearch = new goodsSearchService();//建立实例对象
		try{
			String result = goodsearch.searchgoodsDiscountS();//获取打折商品
			response.getWriter().write(result);//返回打折商品
		}
		catch(Exception e){
			e.printStackTrace();//抛出异常
		}
	}

}
