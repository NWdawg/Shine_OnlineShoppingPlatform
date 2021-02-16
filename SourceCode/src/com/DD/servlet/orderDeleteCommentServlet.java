package com.DD.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.orderOperationService;

/**
 * Servlet implementation class orderDeleteCommentServlet
 */
@WebServlet(description = "订单_删除评论", urlPatterns = { "/orderDeleteCommentServlet" })
public class orderDeleteCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public orderDeleteCommentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		String goodCode = request.getParameter("goodCode");		
		orderOperationService oo = new orderOperationService();
		try
		{
			oo.deleteCommentS(goodCode);			
			response.getWriter().write("<script type='text/javascript'>alert('删除成功！')</script>");
			
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
