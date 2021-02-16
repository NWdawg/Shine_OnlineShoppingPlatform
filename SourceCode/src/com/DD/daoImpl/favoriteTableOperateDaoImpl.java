package com.DD.daoImpl;

public interface favoriteTableOperateDaoImpl {
	public int addGoodsIntoTable(String ownerName, String email, String goodCode) ;
	public int deleteGoodIntoTable(String email, String goodCode);
	public String showFavoriteTable(String email);
	public String searchFavoriteTable(String email, String goodCode) ;
}
