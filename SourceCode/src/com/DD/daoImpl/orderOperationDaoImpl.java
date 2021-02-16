package com.DD.daoImpl;

import java.util.ArrayList;
import java.util.List;

import com.DD.bean.commentst;

/**
 * 
* @ClassName: orderOperation 
* @Description: TODO(此接口对应于订单相关操作) 
* @author @mollyunfei
* @date 2018年7月25日 上午10:30:28 
*
 */
public interface orderOperationDaoImpl {
	//1.订单确认---该操作属于业务层---dao层不管
	//返回一个列表，<>里面是列表的类型，列表的每一项都是<>中的格式
	public String orderListSearch(String useremail);
	public int   orderDelete(String orderNo_para);
	//2.订单列表
	//3.删除订单
	//-----------------------------------------------------
	//20180725-@liyunfei
	//4.查询明细功能
	public String searchOrderDetail(String goodCode) throws Exception;
	//5.查询所需功能 PQ--PartQuery
	public String searchOrderDetailPQ(String email,String shopName, String name) throws Exception;
	//6.修改订单加入购物车--此操作是从订单表中删除，增加至购物车表中
	public void addIntoFavoriteFromOrder(String goodCode,String owner,String email) throws Exception;
	
	//查找某个商品的全部评论
	public String searchAllComment(String goodcode) throws Exception;
	//7.对商品增加评论    
	public int addComment(String goodcode,String owner,String email,String commentsContent);
	//8.对商品删除评论	
	public void deleteComment(String goodcode);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
