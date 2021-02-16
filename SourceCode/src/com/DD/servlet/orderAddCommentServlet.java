package com.DD.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.orderOperationService;

/**
 * Servlet implementation class orderAddCommentServlet
 */
@WebServlet(description = "订单除增加评论", urlPatterns = { "/orderAddCommentServlet" })
public class orderAddCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public orderAddCommentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String email = request.getParameter("email");
		String goodCode = request.getParameter("goodCode");
		String owner = request.getParameter("owner");
		String commentsContent = request.getParameter("commentsContent");
		orderOperationService oo = new orderOperationService();
		try
		{
			int result = oo.addCommentS(goodCode, owner, email, commentsContent);
			if(result == 0)
			{
				response.getWriter().write("<script type='text/javascript'>alert('评论失败！')</script>");
			}
			else
			{
				response.getWriter().write("<script type='text/javascript'>alert('评论成功！')</script>");
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
