package com.DD.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.DD.bean.cellphone;
import com.DD.bean.customerst;
import com.DD.bean.shoppingcart;
import com.DD.daoImpl.shoppingCarDaoImpl;
import com.google.gson.Gson;

public class shoppingCarDao implements shoppingCarDaoImpl {

	public customerst m_customerst = null;

	public shoppingCarDao() {
		m_customerst = new customerst();
	}
	
	//校验用户是否登录
	@Override
	public boolean isLogin(String email,String password) throws Exception {
		// TODO Auto-generated method stub
		boolean flag=false;
		Connection connection=new DBConnection().getConnection();
		String sql="select * from goods.customerst where email=? and password =?";
		PreparedStatement preparedStatement=connection.prepareStatement(sql);
		preparedStatement.setString(1, email);
		preparedStatement.setString(2, password);
		ResultSet result=preparedStatement.executeQuery();
		//如果result.next()为true则说明找到了相应的会员
		if (result.next()) {
			System.out.println("会员登录成功");
			flag=true;
		}
		return true;
	}

	// 购物车增加商品
	@Override
	public int addGoodsIntoShoppingCar(String goodCode,String email, String num) {
		Connection conn = null;
		String sql = "insert into goods.shoppingcart (goodCode,email,num) values (?,?,?)";
		PreparedStatement prep = null;
		int rs = 0;
		try {
			conn = DBConnection.getConnection();
			prep = conn.prepareStatement(sql);
			prep.setString(1, goodCode);
			prep.setString(2, email);
			prep.setString(3, num);
			rs = prep.executeUpdate();
		} // 查询 修改删除executeUpdate
		catch (Exception e) {
			e.printStackTrace();
			System.out.println("ERROR add CELLPHONE");
		}
		System.out.println(rs);
		return rs;
	}

	// 购物车删除商品
	@Override
	public int deleteCellphone(String goodCode, String email) {
		Connection conn = null;
		String sql = "delete from shoppingcart where goodCode = ? and email=?";
		PreparedStatement prep = null;
		int rs = 0;
		try {
			conn = DBConnection.getConnection();
			prep = conn.prepareStatement(sql);
			prep.setString(1, goodCode);
			prep.setString(2, email);
			rs = prep.executeUpdate();
		} // 查询 修改删除executeUpdate
		catch (Exception e) {
			e.printStackTrace();
			System.out.println("ERROR DELETE");
		}
		System.out.println(rs);
		return rs;
	}

	// 通过goodCode增加某个物体
	@Override
	public boolean changeGoodCont(String email,String password,String goodCode, int count) throws Exception {
		// 修改表中数据个数
		boolean result = false;
		// TODO Auto-generated method stub
		if (this.isLogin(email,password)) {
			Connection conn = null;
			// 设置SQL语句
			String sql = "UPDATE shoppingCarT SET num=? WHERE goodCode=? ";
			PreparedStatement prep = null;

			try {
				// 修改数量 添加一条到数据表中
				conn = DBConnection.getConnection();
				prep = conn.prepareStatement(sql);

				prep.setString(1, Integer.toString(count));
				prep.setString(2, goodCode);

				result = (prep.executeUpdate() != 0);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("change_ConnError");
				result = false;
			}

		} else {
			// 没有登录进来
			System.out.println("登录失败");
			result = false;
		}
		System.out.println("修改购物车商品数量result: "+result);
		return result;
	}

	
	//下面是清空购物车操作
	@Override
	public boolean deleteAllInThisShoppingCart(String email,String password) throws Exception {
		// TODO Auto-generated method stub
		boolean result = false;
		// TODO Auto-generated method stub
		if (this.isLogin(email,password)) {
			Connection conn = null;
			// 设置SQL语句
			String sql = "DELETE FROM shoppingCarT WHERE email=?";
			PreparedStatement prep = null;
			try {
				conn = DBConnection.getConnection();
				prep = conn.prepareStatement(sql);
				prep.setString(1, email);
				result = (prep.executeUpdate() != 0); // 执行 删除所有owner是user的表象

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("delete_ConnError");
				result = false;
			}

		} else {
			// 没有登录进来
			System.out.println("登录失败");
			result = false;
		}
		System.out.println("清空购物车result: "+result);
		return result;

	}
	
	//查找购物车商品
	//利用right join进行table右连接
	public String findShoppingCarByEmail(String email) {
		Connection conn = null;
		String sql1 = "select  * from goods.cellphone A right join goods.shoppingcart B on A.goodCode=B.goodCode and B.email=?";
		PreparedStatement prep = null;
		ResultSet resultSet = null;
		List<cellphone> cellphoneList=new ArrayList<cellphone>();
		cellphone table = null;
		try {
			conn = DBConnection.getConnection();
			prep = conn.prepareStatement(sql1);
			prep.setString(1, email);
			resultSet = prep.executeQuery();// 查询 修改删除executeUpdate
			while (resultSet.next())// 把数据库中查询的结果通过javaBean进行封装
			{
				table = new cellphone();
				table.setCategory(resultSet.getString("category"));
				table.setName(resultSet.getString("name"));
				table.setPicture(resultSet.getString("picture"));
				table.setShopName(resultSet.getString("shopName"));
				table.setPrice(resultSet.getString("price"));
				table.setBrand(resultSet.getString("brand"));
				table.setModel(resultSet.getString("model"));
				table.setFuselageColor(resultSet.getString("fuselageColor"));
				table.setPixel(resultSet.getString("pixel"));
				table.setNetwork(resultSet.getString("network"));
				table.setScreenSize(resultSet.getString("screenSize"));
				table.setCpu(resultSet.getString("cpu"));
				table.setSystem(resultSet.getString("system"));
				table.setFuselageMemory(resultSet.getString("fuselageMemory"));
				table.setBatteryCapacity(resultSet.getString("batteryCapacity"));
				table.setRunMemory(resultSet.getString("runMemory"));
				table.setGoodCode(resultSet.getString("goodCode"));
				table.setOwner(resultSet.getString("owner"));
				table.setEmail(resultSet.getString("email"));
				table.setNum(resultSet.getString("num"));
				cellphoneList.add(table);
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("ERROR USER NULL");
		}
		Gson gson = new Gson();
		String fetchAllFavorListJson = gson.toJson(cellphoneList);
		System.out.println(fetchAllFavorListJson);
		return fetchAllFavorListJson;
  }	
	
	//购买一个东西
	public float buyOneInShoppingCart(String email,String goodCode) 
	{
		// TODO Auto-generated method stub
		//清空购物车并添加到订单表中？ 
		float money = 0.0f;
		try 
		{
			Connection conn = DBConnection.getConnection();
			String sql = "SELECT * FROM shoppingCarT WHERE email=?";
			PreparedStatement prep = null;				
			ResultSet rs = null;	
			prep = conn.prepareStatement(sql);
			prep.setString(1, email);
			rs = prep.executeQuery(); //rs 是购物车中的商品信息
			//查找用户购物车中所有的项
			if(rs.next())
			{
				//查询购物车表中一项商品的goodCode并在goodT表中查找goodCodedeprice
				String sql_goods = "SELECT * FROM goodsT WHERE goodCode=?";
				ResultSet rs_goods = null;	
				PreparedStatement prep_goods = null;						
				prep_goods = conn.prepareStatement(sql_goods);					
				prep_goods.setString(1, rs.getString("goodCode"));
				rs_goods = prep_goods.executeQuery();
				if(rs_goods.next()) //使用RS之前应将RS移动至下行
					money = Float.valueOf(rs_goods.getString("price")) * Float.valueOf(rs.getString("num") ); 
			}
		} 
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("buy——连接出错");
		}
		return money;
	}

	
}
