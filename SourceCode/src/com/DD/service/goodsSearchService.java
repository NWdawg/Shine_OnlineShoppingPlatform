package com.DD.service;

import com.DD.dao.goodsSearchDao;
import com.DD.serviceImpl.goodsSearchServiceImpl;

public class goodsSearchService implements goodsSearchServiceImpl{
	
	@Override
	public String searchGoodsDeatilS(String goodCode) throws Exception {
		// TODO Auto-generated method stub
		return new goodsSearchDao().searchGoodsDeatil(goodCode);
	}

	@Override
	public String searchgoodsHotS() throws Exception {
		// TODO Auto-generated method stub
		return new goodsSearchDao().searchgoodsHot();
	}

	@Override
	public String searchgoodsDiscountS() throws Exception {
		// TODO Auto-generated method stub
		return new goodsSearchDao().searchgoodsDiscount();
	}
	
	//条件查询--按商店或者商品名或者两者一起查询
	@Override
	public String searchGoodsDetailPQ(String shopName, String name) throws Exception {
		// TODO Auto-generated method stub
		return new goodsSearchDao().searchGoodsDetailPQ(shopName, name);
	}
}
