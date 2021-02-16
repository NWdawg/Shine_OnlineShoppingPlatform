package com.DD.service;

import com.DD.dao.orderOperationDao;
import com.DD.serviceImpl.orderOperateServiceImpl;

public class orderOperationService implements orderOperateServiceImpl{


	@Override
	public String orderListSearchS(String useremail) 
	{
		// TODO Auto-generated method stub
		return new orderOperationDao().orderListSearch(useremail);
	}

	@Override
	public void orderDeleteS(String orderNo_para) 
	{
		// TODO Auto-generated method stub
		new orderOperationDao().orderDelete(orderNo_para);
	}

	
	public String searchOrderDetailS(String goodCode) throws Exception {
		// TODO Auto-generated method stub
		return new orderOperationDao().searchOrderDetail(goodCode);
	}


	public String searchOrderDetailPQS(String email, String shopName, String name) throws Exception {
		// TODO Auto-generated method stub
	  return	new orderOperationDao().searchOrderDetailPQ(email, shopName, name);
	}


	public void addIntoFavoriteFromOrderS(String goodCode, String owner, String email) throws Exception {
		// TODO Auto-generated method stub
		new orderOperationDao().addIntoFavoriteFromOrder(goodCode, owner, email);
	}

	//增加评论操作
	public int addCommentS(String goodcode, String owner, String email, String commentsContent) {
		// TODO Auto-generated method stub
		return new orderOperationDao().addComment(goodcode, owner, email, commentsContent);
	}


	public void deleteCommentS(String goodcode) {
		// TODO Auto-generated method stub
		new orderOperationDao().deleteComment(goodcode);
	}
	
	//获取某个goodCode商品所有评论
	@Override
	public String searchAllCommentS(String goodcode) throws Exception {
		// TODO Auto-generated method stub
		return new orderOperationDao().searchAllComment(goodcode);
	}

}
