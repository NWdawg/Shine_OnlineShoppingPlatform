package com.DD.daoImpl;

/**
 * 
* @ClassName: goodsSearchDaoImpl 
* @Description: TODO(商品查询类接口) 
* @author @mollyunfei
* @date 2018年7月24日 下午5:52:13 
*
 */
public interface goodsSearchDaoImpl {
	//条件查询
	public String searchGoodsDetailPQ(String shopName, String name) throws Exception;
	//查询商品明细
	public String searchGoodsDeatil(String goodCode) throws Exception;
	//查询热卖商品--因为是一类商品，因此无须加上goodCode参数
	public String searchgoodsHot() throws Exception;
	//查询打折促销商品
	public String searchgoodsDiscount() throws Exception;
	
}
