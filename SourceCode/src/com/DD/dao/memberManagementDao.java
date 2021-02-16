package com.DD.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.DD.bean.cellphone;
import com.DD.bean.customerst;
import com.DD.bean.interestt;
import com.DD.bean.ordert;
import com.DD.daoImpl.memberManagementDaoImpl;
import com.google.gson.Gson;
import com.mysql.jdbc.Statement;

public class memberManagementDao implements memberManagementDaoImpl {


	//检查是否有某个邮箱
	@Override
	public int checkHasEmail(String email) throws Exception {
		// TODO Auto-generated method stub
		int flag=0;
		Connection connection=DBConnection.getConnection();
		String sql="select * from goods.customerst where email=?";
		PreparedStatement preparedStatement=connection.prepareStatement(sql);
		preparedStatement.setString(1, email);
		ResultSet result=preparedStatement.executeQuery();
		//由于邮箱指定则返回结果集唯一，因此可以用if----email, PK-UN
		if (result.next()) {
			System.out.println("当前邮箱已有人注册，请您换个邮箱，如果您是该邮箱主人，请点击右上角登录！");
			flag=888;
		}else {
			System.out.println("当前邮箱无人注册，您可以使用该邮箱作为你的唯一登录凭证！");
			flag=666;
		}
		return flag;
	}

	
	//实现会员注册--会员注册时先检查数据库是否有该用户
	@Override
	public int userRegistD(String userName, String email, String password) throws Exception {
		// TODO Auto-generated method stub
		int flag=0;
		Connection connection=DBConnection.getConnection();
		String sql="insert into goods.customerst(ownerName,email,password) values(?,?,?)";
		PreparedStatement preparedStatement=connection.prepareStatement(sql);
		preparedStatement.setString(1, userName);
		preparedStatement.setString(2, email);
		preparedStatement.setString(3,password);
		int result=preparedStatement.executeUpdate();
		if (result==1) {
			System.out.println("当前email:"+email+"已注册成功！");
			flag=666;
		}else {
			System.out.println("当前email:"+email+"注册失败！");
			flag=777;
		}
		//一般不会返回0，因此可以不管
		System.out.println("会员注册标志flag: "+flag);
		return flag;
	}
	
	//检查登录
	@Override
	public int checkLogin(String email,String password) throws Exception {
		// TODO Auto-generated method stub
		int flag;
		Connection connection=new DBConnection().getConnection();
		String sql="select * from goods.customerst where email='"+email+"' and password='"+password+"';";
		Statement statement=(Statement) connection.createStatement();
		ResultSet resultSet=statement.executeQuery(sql);
		//由于email唯一--因此返回的结果集中只有一个，如果有返回则证明该邮箱和密码正确，否则邮箱或密码错误
		if (resultSet.next()) {
			//可以登录--邮箱和密码皆正确
			flag=666;
		}else {
			//邮箱或密码错误
			flag=999;
		}
		return flag;
	}
	// 更新会员信息--更新信息仅限密码-界面风格-用户名
	public int memberUpdate(String email, String password, String surfaceStyle, String ownerName) {
		Connection conn = null;
		String[] pqString = new String[3];
		List<String> list = new ArrayList<String>();
		Map<String, String> map = new HashMap<String, String>();
		map.put("password", password);
		map.put("surfaceStyle", surfaceStyle);
		map.put("ownerName", ownerName);
		int i = 0;
		// 密码未做更改，前台未传数据，因此为空时
		// password = ? , surfaceStyle = ? ,newOwnerName = ?
		if (!"".equals(password)) {
			pqString[i] = "password = ?";
			list.add(pqString[i]);
			i++;
		}
		if (!"".equals(surfaceStyle)) {
			pqString[i] = "surfaceStyle = ?";
			list.add(pqString[i]);
			i++;
		}
		if (!"".equals(ownerName)) {
			pqString[i] = "ownerName = ?";
			list.add(pqString[i]);
			i++;
		}
		// 下面是List转String,然后逗号分隔
		String realpqString = String.join(",", list);
		String sql = "update goods.customersT set " + realpqString + " where email = ?";
		System.out.println(sql);
		PreparedStatement prep = null;
		int rs = 0;
		try {
			conn = DBConnection.getConnection();
			prep = conn.prepareStatement(sql);
			// 下面是利用for循环来动态添加prep参数
			for (int j = 1; j <= list.size(); j++) {
				prep.setString(j, map.get(list.get(j - 1).split("=")[0].trim()));
			}
			// 最后把email给设置上
			prep.setString(list.size() + 1, email);
			rs = prep.executeUpdate();
		} // 查询 修改删除executeUpdate
		catch (Exception e) {
			e.printStackTrace();
			System.out.println("ERROR DELETE");
		} finally {

		}
		System.out.println("会员更改rs: " + rs);
		return rs;
	}

	// 下面是通过邮件查看以往的订单
	@Override
	public String findOrderByEmail(String email) {
		Connection conn=null;
    	String sql = "select * from goods.cellphone  where goodCode in (select goodCode from goods.ordert where email= ?)";
    	PreparedStatement prep = null;
    	ResultSet rs = null;
    	List<cellphone> cellphonesList=new ArrayList<cellphone>();
    	cellphone phone = null;
    	try{
    		 conn = DBConnection.getConnection();
             prep = conn.prepareStatement(sql);
    		 prep.setString(1, email);
    		 rs = prep.executeQuery();//查询   修改删除executeUpdate
  /*多条用while*/ while(rs.next())//把数据库中查询的结果通过javaBean进行封装
                    {
		             phone = new cellphone();
		             phone.setCategory(rs.getString("category"));
		             phone.setName(rs.getString("name"));
		             phone.setPicture(rs.getString("picture"));
		             phone.setShopName(rs.getString("shopName"));
		             phone.setPrice(rs.getString("price"));
		             phone.setBrand(rs.getString("brand"));
		             phone.setModel(rs.getString("model"));
		             phone.setFuselageColor(rs.getString("fuselageColor"));
		             phone.setPixel(rs.getString("pixel"));
		             phone.setNetwork(rs.getString("network"));
		             phone.setScreenSize(rs.getString("screenSize"));
		             phone.setCpu(rs.getString("cpu"));
		             phone.setSystem(rs.getString("system"));
		             phone.setFuselageMemory(rs.getString("fuselageMemory"));
		             phone.setBatteryCapacity(rs.getString("batteryCapacity"));
		             phone.setRunMemory(rs.getString("runMemory"));
		             phone.setGoodCode(rs.getString("goodCode"));
		             cellphonesList.add(phone);
                    }       		
    	}
    	catch(Exception e){
    		e.printStackTrace();
    		System.out.println("ERROR USER NULL");
    	}
		// 下面是将查询出来的结果格式化为json
		Gson gson = new Gson();
		String passOrdersJson = gson.toJson(cellphonesList);
		System.out.println(passOrdersJson);
		return passOrdersJson;
	}

	// 下面是通过邮箱查找感兴趣表
	// 20180725--测试未通过--逻辑不正确
	// 20180726--重新测试
	@Override
	public String findInterestByEmail(String email) {
		Connection conn = null;
		String sql1 = "select * from goods.cellphone  where goodCode in (select goodCode from goods.interestt where email= ?)";
		PreparedStatement prep = null;
		ResultSet rs = null;
		List<cellphone> cellphonesList=new ArrayList<cellphone>();
		cellphone phone = null;
		try {
			conn = DBConnection.getConnection();
			prep = conn.prepareStatement(sql1);
			prep.setString(1, email);
			rs = prep.executeQuery();// 查询 修改删除executeUpdate
			while (rs.next())// 把数据库中查询的结果通过javaBean进行封装
			{
				phone = new cellphone();
				phone.setCategory(rs.getString("category"));
				phone.setName(rs.getString("name"));
				phone.setPicture(rs.getString("picture"));
				phone.setShopName(rs.getString("shopName"));
				phone.setPrice(rs.getString("price"));
				phone.setBrand(rs.getString("brand"));
				phone.setModel(rs.getString("model"));
				phone.setFuselageColor(rs.getString("fuselageColor"));
				phone.setPixel(rs.getString("pixel"));
				phone.setNetwork(rs.getString("network"));
				phone.setScreenSize(rs.getString("screenSize"));
				phone.setCpu(rs.getString("cpu"));
				phone.setSystem(rs.getString("system"));
				phone.setFuselageMemory(rs.getString("fuselageMemory"));
				phone.setBatteryCapacity(rs.getString("batteryCapacity"));
				phone.setRunMemory(rs.getString("runMemory"));
				phone.setGoodCode(rs.getString("goodCode"));
				cellphonesList.add(phone);
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("ERROR USER NULL");
		}
		Gson gson = new Gson();
		String cellphonesListJson = gson.toJson(cellphonesList);
		System.out.println(cellphonesListJson);
		return cellphonesListJson;
	}

	// 下面是通过邮箱查看个人信息
	@Override
	public String findCustomersByEmail(String email) {
		Connection conn = null;
		String sql = "select * from customersT where email = ?";
		PreparedStatement prep = null;
		ResultSet rs = null;
		customerst table = null;
		try {
			conn = DBConnection.getConnection();
			prep = conn.prepareStatement(sql);
			prep.setString(1, email);
			rs = prep.executeQuery();// 查询 修改删除executeUpdate
			while (rs.next())// 把数据库中查询的结果通过javaBean进行封装
			{
				table = new customerst();
				table.setEmail(rs.getString("email"));
				table.setPassword(rs.getString("password"));
				table.setSurfaceStyle(rs.getString("surfaceStyle"));
				table.setOwnerName(rs.getString("ownerName"));
				table.setBonusPoints(rs.getString("bonusPoints"));
				table.setRank(rs.getString("rank"));
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("ERROR USER NULL");
		} finally {

		}
		Gson gson = new Gson();
		String customersJson = gson.toJson(table);
		System.out.println(customersJson);
		return customersJson;
	}
	
	//增加通过邮件查找用户名
	public String fetchOwnerName(String email) throws Exception{
		Connection connection=DBConnection.getConnection();
		String sql="select ownerName from goods.customerst where email=?";
		PreparedStatement preparedStatement=connection.prepareStatement(sql);
		preparedStatement.setString(1, email);
		//因为是查询一个用户，因此返回结果集可以直接使用if
		ResultSet resultSet=preparedStatement.executeQuery();
		String ownerName="";
		if (resultSet.next()) {
			ownerName=resultSet.getString("userName");
		}
		return ownerName;
	}
}
