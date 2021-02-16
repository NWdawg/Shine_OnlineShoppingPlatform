package com.DD.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.memberManageService;
import com.DD.service.orderOperationService;

/**
 * Servlet implementation class addCommentsServlet
 */
@WebServlet(description = "增加评论Servlet", urlPatterns = { "/addCommentsServlet" })
public class addCommentsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addCommentsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//增加评论操作--首先设置编码格式
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		//增加评论---email--评论内容
		String email =request.getParameter("email");
		//其余的比如goodCode,owner--从数据库获取即可
		String commentsContent=request.getParameter("commentsContent");
		String goodcode=request.getParameter("goodCode");
		String owner=null;
		try {
			owner = new memberManageService().fetchOwnerNameS(email);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//注意，在评论成功后要给前端返回一个标志，以防因为网络原因评论失败
		orderOperationService operationService=new orderOperationService();
		int result=operationService.addCommentS(goodcode, owner, email, commentsContent);
		//评论成功后向前台写一个提示
		response.getWriter().write(result);
	}
}
