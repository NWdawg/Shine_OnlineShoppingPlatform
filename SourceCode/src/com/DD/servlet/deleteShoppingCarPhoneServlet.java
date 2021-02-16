package com.DD.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DD.service.shoppingCarService;

/**
 * Servlet implementation class deleteShoppingCarPhoneServlet
 */
@WebServlet(description = "从购物车删除商品", urlPatterns = { "/deleteShoppingCarPhoneServlet" })
public class deleteShoppingCarPhoneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteShoppingCarPhoneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String  goodCode = request.getParameter("goodCode");//获取商品码
		 String  email    = request.getParameter("email");//获取邮箱
		 shoppingCarService shoppingcar = new shoppingCarService();//建立实例对象
		 int result= shoppingcar.deleteCellphoneS(goodCode, email);//删除购物车对应物品
		 if(result == 0){//删除失败
			    response.getWriter().write("777");//删除失败返回777
		 }else{//删除成功
			 response.getWriter().write("666");//删除成功返回666
		 }
	}// TODO Auto-generated method stub
	

}
