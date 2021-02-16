package com.DD.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.goodsSearchService;

/**
 * Servlet implementation class searchGoodsDeatilByGoodCodeServlet
 */
@WebServlet(description = "通过goodCode获取页面商品详情", urlPatterns = { "/searchGoodsDeatilByGoodCodeServlet" })
public class searchGoodsDeatilByGoodCodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public searchGoodsDeatilByGoodCodeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    //查询页面详细数据这样的操作--不涉及敏感信息
    //最好使用get---访问请求速度相对较快
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    //首先设置请求响应编码方式
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    //获取参数为goodCode
    String goodCode=request.getParameter("goodCode");
    goodsSearchService goodsSearchServiceD=new goodsSearchService();
    try {
		String json=goodsSearchServiceD.searchGoodsDeatilS(goodCode);
		//由于是点击操作--无需进行校验
		response.getWriter().write(json);
    } catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    }
    
}
