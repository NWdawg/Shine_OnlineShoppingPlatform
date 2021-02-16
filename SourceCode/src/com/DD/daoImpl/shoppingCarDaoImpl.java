package com.DD.daoImpl;

/**
 * 
 * @ClassName: shoppingCarDaoImpl
 * @Description: TODO(购物车shoppingCar操作类接口)
 * @author @mollyunfei
 * @date 2018年7月24日 下午5:52:57
 *
 */
// 注意要进行购物车操作，必须提前登陆
// 因此要提前校验用户是否登录
public interface shoppingCarDaoImpl {

	//通过邮箱查找某个会员的所有购物车列表
	public String findShoppingCarByEmail(String email);
	// 校验是否登录
	public boolean isLogin(String email,String password) throws Exception;
	//购物车添加商品-池
	public int addGoodsIntoShoppingCar(String goodCode,String email, String num);
	//购物车删除商品-池
	public int deleteCellphone(String goodCode,String email);
	//商品数量更改-杨
	public boolean changeGoodCont(String email,String password,String goodCode,int count) throws Exception;
	//清空购物车-杨
	public boolean deleteAllInThisShoppingCart(String email,String password) throws Exception; 
}
