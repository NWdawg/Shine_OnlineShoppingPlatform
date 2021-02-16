package com.DD.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.goodsSearchService;
import com.DD.service.shoppingCarService;

public class phoneDetailServlet extends HttpServlet{//电商平台界面
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException{
	       String goodCode = request.getParameter("goodCode");//获取商品唯一码
	       goodsSearchService  goodsService = new goodsSearchService();
	      try{
	    	  String result = goodsService.searchGoodsDeatilS(goodCode);//根据唯一码查询具体商品
	    	  response.getWriter().write(result);//返回具体信息结果
	      }
	      catch(Exception e){
	    		e.printStackTrace();//抛出异常
	      }
	       
	}
}
