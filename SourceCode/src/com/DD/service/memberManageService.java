package com.DD.service;

import com.DD.dao.memberManagementDao;
import com.DD.serviceImpl.memberManageServiceImpl;

/**
 * 
* @ClassName: memberManageService 
* @Description: TODO(会员管理的Service层) 
* @author @mollyunfei
* @date 2018年7月26日 上午9:36:01 
*
 */
public class memberManageService implements memberManageServiceImpl{
	
	//检查会员登录
	@Override
	public int checkLoginS(String email, String password) throws Exception {
		// TODO Auto-generated method stub
		return new memberManagementDao().checkLogin(email, password);
	}
	
	//检查当前email是否有人注册---如果有进行提示
	@Override
	public int checkHasEmailS(String email) throws Exception {
		// TODO Auto-generated method stub
		return new memberManagementDao().checkHasEmail(email);
	}
	
	//实现会员注册的Service
	@Override
	public int userRegistS(String userName, String email, String password) throws Exception {
		// TODO Auto-generated method stub
		return new memberManagementDao().userRegistD(userName, email, password);
	}
	
	//通过邮箱查找用户名
	@Override
	public String fetchOwnerNameS(String email) throws Exception {
		// TODO Auto-generated method stub
		return new memberManagementDao().fetchOwnerName(email);
	}

}
