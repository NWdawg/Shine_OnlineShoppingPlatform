package com.DD.serviceImpl;

public interface shoppingCarServiceImpl {
	//购物车添加商品-池
	public int addGoodsIntoShoppingCarS(String goodCode,String email, String num);
	//购物车删除商品-池
	public int deleteCellphoneS(String goodCode,String email);
	//商品数量更改-杨
	public boolean changeGoodContS(String email,String password,String goodCode,int count) throws Exception;
	//清空购物车-杨
	//清空某个会员的全部购物车商品
	public boolean deleteAllInThisShoppingCartS(String email,String password) throws Exception; 
	//通过邮箱查找某个会员email的所有商品列表
	public String findShoppingCarByEmailS(String email);
	public float buyOneInShoppingCartS(String email,String goodCode);
	
}
