package com.DD.serviceImpl;

public interface favoriteTableOperateServiceImpl 
{
	public int addInToFavoriteTableS(String ownerName,String email,String goodCode);
	public int deleteGoodInTableS(String email,String goodCode);
	public String showFavoriteTableS(String email);
	public String searchFavoriteTableS(String email, String goodCode); 
	
}
