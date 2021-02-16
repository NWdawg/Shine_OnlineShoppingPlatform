package com.DD.servlet;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.favoriteTableOperateService;


/*
 * 显示数据库中收藏夹中的数据
 * 
 * */
public class favoriteTableShowServlet extends HttpServlet implements Servlet
{

	
	//从数据库里读
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		favoriteTableOperateService ftos = new favoriteTableOperateService();
		String email = request.getParameter("email");		
		try
		{
			String json_FavoirteTableStr = ftos.showFavoriteTableS(email);
			
			response.getWriter().write(json_FavoirteTableStr); //响应返回
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		
	}
}
