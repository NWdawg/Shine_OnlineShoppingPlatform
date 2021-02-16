package com.DD.serviceImpl;

public interface orderOperateServiceImpl {
	
	
	public String orderListSearchS(String useremail);
	public void   orderDeleteS(String orderNo_para);
	//2.订单列表
	//3.删除订单
	//-----------------------------------------------------
	//20180725-@liyunfei
	//4.查询明细功能
	public String searchOrderDetailS(String goodCode) throws Exception;
	//5.查询所需功能 PQ--PartQuery
	public String searchOrderDetailPQS(String email,String shopName, String name) throws Exception;
	//6.修改订单加入购物车--此操作是从订单表中删除，增加至购物车表中
	public void addIntoFavoriteFromOrderS(String goodCode,String owner,String email) throws Exception;
	
	//6.5获取某个商品的全部评论
	public String searchAllCommentS(String goodcode) throws Exception;
	//7.对商品增加评论    
	public int addCommentS(String goodcode,String owner,String email,String commentsContent);
	//8.对商品删除评论	
	public void deleteCommentS(String goodcode);
	
}
