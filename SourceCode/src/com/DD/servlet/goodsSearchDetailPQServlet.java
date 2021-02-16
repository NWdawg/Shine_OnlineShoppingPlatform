package com.DD.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.goodsSearchService;

/**
 * Servlet implementation class goodsSearchDetailPQServlet
 */
@WebServlet(description = "条件查询商品Servlet", urlPatterns = { "/goodsSearchDetailPQServlet" })
public class goodsSearchDetailPQServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public goodsSearchDetailPQServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //由于查询不涉及铭感信息--非会员亦可以搜索商品
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		//此servlet查询时无需email
		String shopName=request.getParameter("shopName");
		String goodsName=request.getParameter("goodsName");
		goodsSearchService goodsSearchService=new goodsSearchService();
		String json="";
		try {
			System.out.println("-----------------------------------");
			json=goodsSearchService.searchGoodsDetailPQ(shopName, goodsName);
			System.out.println("-----------------------------------");
			System.out.println("哈秋Json："+ json);
			//由于是条件查询操作--登录用户和未登录用户均可查询
			//因此将获得的数据直接写到前台--前台Ajax接收即可
			response.getWriter().write(json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
