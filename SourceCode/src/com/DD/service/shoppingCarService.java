package com.DD.service;

import com.DD.dao.shoppingCarDao;
import com.DD.serviceImpl.shoppingCarServiceImpl;

public class shoppingCarService implements shoppingCarServiceImpl{

	//添加商品到购物车
	public int addGoodsIntoShoppingCarS(String goodCode,String email, String num) {
		// TODO Auto-generated method stub
		return new shoppingCarDao().addGoodsIntoShoppingCar(goodCode, email, num);
	}

	public int deleteCellphoneS(String goodCode, String email) {
		// TODO Auto-generated method stub
		return new shoppingCarDao().deleteCellphone(goodCode, email);
	}

	public boolean changeGoodContS(String email, String password, String goodCode, int count) throws Exception {
		// TODO Auto-generated method stub
		return new shoppingCarDao().changeGoodCont(email, password, goodCode, count);
	}

	public boolean deleteAllInThisShoppingCartS(String email, String password) throws Exception {
		// TODO Auto-generated method stub
		return new shoppingCarDao().deleteAllInThisShoppingCart(email, password);
	}
	
	//通过邮箱查找某个会员email的所有商品列表
	public String findShoppingCarByEmailS(String email) {
		// TODO Auto-generated method stub
		return new shoppingCarDao().findShoppingCarByEmail(email);
	}
	
	public float buyOneInShoppingCartS(String email, String goodCode) {
		// TODO Auto-generated method stub
		return new shoppingCarDao().buyOneInShoppingCart(email, goodCode);
	}
}
