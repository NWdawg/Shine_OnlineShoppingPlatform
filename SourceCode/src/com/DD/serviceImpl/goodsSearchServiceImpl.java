package com.DD.serviceImpl;

public interface goodsSearchServiceImpl {
	
	//条件查询--按店铺名或者按商品名查询
	public String searchGoodsDetailPQ(String shopName, String name) throws Exception;
	//查询商品明细
	public String searchGoodsDeatilS(String goodCode) throws Exception;
	//查询热卖商品--因为是一类商品，因此无须加上goodCode参数
	public String searchgoodsHotS() throws Exception;
	//查询打折促销商品
	public String searchgoodsDiscountS() throws Exception;
}
