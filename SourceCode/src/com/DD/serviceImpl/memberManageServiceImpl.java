package com.DD.serviceImpl;

/**
 * 
* @ClassName: memberManageServiceImpl 
* @Description: TODO(会员管理接口类) 
* @author @mollyunfei
* @date 2018年7月26日 上午9:34:44 
*
 */
public interface memberManageServiceImpl {
	//通过邮箱查找用户名
	public String fetchOwnerNameS(String email) throws Exception;
	//检查当前邮箱是否有人注册--如果有进行提示
	public int checkHasEmailS(String email) throws Exception;
	//实现会员注册
	public int userRegistS(String userName,String email,String password) throws Exception;
	//检查会员登录方法
	public int checkLoginS(String email,String password) throws Exception;
}
