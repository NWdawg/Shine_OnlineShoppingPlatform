package com.DD.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.favoriteTableOperateService;

/**
 * Servlet implementation class favoriteTableSearchServlet
 */
@WebServlet(description = "在收藏夹中搜索", urlPatterns = { "/favoriteTableSearchServlet" })
public class favoriteTableSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public favoriteTableSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email = request.getParameter("email");
		String goodCode = request.getParameter("goodCode");
		favoriteTableOperateService ftos = new favoriteTableOperateService();
		try
		{
			String json_phone =	ftos.searchFavoriteTableS(email, goodCode);
			response.getWriter().write(json_phone); //返回json格式的phone
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}		
		
		
	}

	
}
