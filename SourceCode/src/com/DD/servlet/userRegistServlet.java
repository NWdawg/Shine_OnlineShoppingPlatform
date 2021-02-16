package com.DD.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.memberManageService;

/**
 * Servlet implementation class userRegist
 */
@WebServlet(description = "用户注册Servlet", urlPatterns = { "/userRegistServlet" })
public class userRegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userRegistServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    //用户注册--涉及密码--默认使用POST方式
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//首先设置请求编码方式
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String userName=request.getParameter("userName");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		//下面调用Service层进行会员注册
		memberManageService manageService=new memberManageService();
		PrintWriter printWriter=response.getWriter();
		try {
			int flag=manageService.userRegistS(userName, email, password);
			if (flag==666) {
				System.out.println("当前email:"+email+"已注册成功！");
				printWriter.write("666");
				printWriter.flush();
				printWriter.close();
				//注册成功时--进行登录跳转
				//request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			if (flag==777) {
				System.out.println("当前email:"+email+"注册失败！");
				printWriter.write("777");
				printWriter.flush();
				printWriter.close();
				//注册失败--再次跳转到当前页面进行注册
				request.getRequestDispatcher("regist.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
