package com.DD.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.memberManageService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(description = "用户登录界面", urlPatterns = { "/loginServlet" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//登录时，为安全起见默认使用PoSt方式进行前后台交互
	//-------------------------------------------------
    //登录时代码标志：777验证码错误
	//666邮箱密码正确
	//999邮箱或密码错误
    //-------------------------------------------------
	//交互数据--前端使用Ajax
	//交互数据格式--Json
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//登录时--使用emial和password来进行登录
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String email= request.getParameter("email");
		String password=request.getParameter("password");
		// 用户填写的验证码
		String validation = request.getParameter("validation");
		//kaptch验证码框架
		String produceValidation = (String) request.getSession()
				.getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);// 生成的验证码
		//如果验证码匹配成功
		if (produceValidation.equals(validation)) {// 跳转到这个页面的时候添加数据
			//下面进行校验
			//校验逻辑--先校验email是否存在--不存在向前端写数据--邮箱错误
			//再校验密码--密码不正确--提示密码错误
			//此处为方便起见--一次校验
			memberManageService manageService =new memberManageService();
			try {
				int loginFlag=manageService.checkLoginS(email, password);
				//666表示email和password皆正确，允许登录
				//999表示email或者password出错，要求重新登录
				if (loginFlag==666) {
					System.out.println("登录标志loginFlag："+loginFlag);
					//下面设置session
					//ajax给前端返回参数，告诉登录
					response.getWriter().write("1");
					//接着设置session--设置登录用户状态
					request.getSession().setAttribute("email", email);
					//需要校验管理员还是普通会员--暂时默认设置所有人权限为普通会员，没有管理员
					//普通会员powerValue为0,管理员powerValue权限为1
					request.getSession().setAttribute("powerValue", "0");
					//如果校验成功，则跳转至main.jsp
					response.getWriter().write("<script type='text/javascript'>alert('恭喜您，登录成功！')</script>");
					response.getWriter().write(
							"<script type='text/javascript'>window.location.href='main.jsp'</script>");
				}else if (loginFlag==999) {
					System.out.println("登录标志loginFlag："+loginFlag);
					response.getWriter().write("<script type='text/javascript'>alert('邮箱或密码错误，请重新输入！')</script>");
					response.getWriter().write(
							"<script type='text/javascript'>window.location.href='login.jsp'</script>");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}else{
			response.getWriter().write("<script type='text/javascript'>alert('验证码错误，请重新输入！')</script>");
			response.getWriter().write(
					"<script type='text/javascript'>window.location.href='login.jsp'</script>");
		}
	}
}
