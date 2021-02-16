package com.DD.service;

//20180727--favoriteTableOperateDao未给
import com.DD.dao.favoriteTableOperateDao;
import com.DD.serviceImpl.favoriteTableOperateServiceImpl;

public class favoriteTableOperateService implements favoriteTableOperateServiceImpl
{

	@Override
	public int addInToFavoriteTableS(String ownerName, String email, String goodCode)
	{
		// TODO Auto-generated method stub
		return new favoriteTableOperateDao().addGoodsIntoTable(ownerName, email, goodCode);
	}

	@Override
	public int deleteGoodInTableS(String email, String goodCode) 
	{
		// TODO Auto-generated method stub
		return new favoriteTableOperateDao().deleteGoodIntoTable(email, goodCode);
	}

	@Override
	public String showFavoriteTableS(String email) 
	{
		// TODO Auto-generated method stub
		return new favoriteTableOperateDao().showFavoriteTable(email);
	}

	@Override
	public String searchFavoriteTableS(String email, String goodCode) {
		// TODO Auto-generated method stub
		return new favoriteTableOperateDao().searchFavoriteTable(email, goodCode);
	}

}
