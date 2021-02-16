package com.DD.daoImpl;

/**
 * 
* @ClassName: memberManagementImpl 
* @Description: TODO(会员管理相关操作)
* @date 2018年7月25日 下午5:30:09 
*
 */
public interface memberManagementDaoImpl {
	
	//通过邮箱查找用户名
	public String fetchOwnerName(String email) throws Exception;
	//检查是否有某个邮箱
	public int checkHasEmail(String email) throws Exception;
	//实现会员注册
	public int userRegistD(String userName,String email,String password) throws Exception;
	//实现会员登入
	public int checkLogin(String email,String password) throws Exception;
	// 更新会员消息
	public int memberUpdate(String email, String newPassword, String newSurfaceStyle, String newOwnerName);
	// 通过唯一email打开客户订单中的物品，即已购买的物品
	public String findOrderByEmail(String email);
	// 通过唯一email打开感兴趣的商品表
	public String findInterestByEmail(String email);
	// 通过唯一email查询个人信息
	public String findCustomersByEmail(String email);
}
