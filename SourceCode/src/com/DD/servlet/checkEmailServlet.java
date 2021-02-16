package com.DD.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.memberManageService;

/**
 * Servlet implementation class checkEmailServlet
 */
@WebServlet(description = "检查某个邮箱是否有人注册", urlPatterns = { "/checkEmail" })
public class checkEmailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public checkEmailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //检查某个邮箱是否有人注册--由于不涉及隐私，因此可以适用于Get方式
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		//由于是注册检查--注意默认前端使用Ajax--因此此处只用获取对应要校验的email即可
		String email=request.getParameter("email");
		memberManageService manageService=new memberManageService();
		try {
			int flag=manageService.checkHasEmailS(email);
			
			//只用返回对应的标志即可，前端使用Ajax来进行校验
			if (flag==888) {
				System.out.println("当前邮箱已有人注册，请您换个邮箱，如果您是该邮箱主人，请点击右上角登录！");
				response.getWriter().write("888");
				response.getWriter().flush();
			}
			
			if (flag==666) {
				//我去，忘记写返回参数了
				System.out.println("当前邮箱无人注册，您可以使用该邮箱作为你的唯一登录凭证！");
				response.getWriter().write("666");
				response.getWriter().flush();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
