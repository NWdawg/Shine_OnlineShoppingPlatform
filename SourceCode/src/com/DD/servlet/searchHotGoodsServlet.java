package com.DD.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.goodsSearchService;

/**
 * Servlet implementation class searchHotGoodsServlet
 */
@WebServlet(description = "查询热门商品", urlPatterns = { "/searchHotGoodsServlet" })
public class searchHotGoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public searchHotGoodsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		goodsSearchService goodsearch = new goodsSearchService();//建立实例对象
		try{
			String result = goodsearch.searchgoodsHotS();//获取当前火热商品
			response.getWriter().write(result);//返回结果
		}
		catch(Exception e){
			e.printStackTrace();//抛出异常
		}
	}

}
