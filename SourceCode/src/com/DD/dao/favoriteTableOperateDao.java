package com.DD.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.DD.bean.cellphone;
import com.DD.daoImpl.favoriteTableOperateDaoImpl;
import com.google.gson.Gson;

public class favoriteTableOperateDao implements favoriteTableOperateDaoImpl 
{
	
	
	@Override
	public int addGoodsIntoTable(String ownerName, String email, String goodCode) 
	{
		// TODO Auto-generated method stub
		int result = 0;
		try 
		{
			Connection conn = DBConnection.getConnection();
			String sql = "INSERT INTO favoriteT (goodCode,owner,email) VALUES (?,?,?)";
			PreparedStatement prep = conn.prepareStatement(sql);
			prep.setString(1, goodCode);
			prep.setString(2, ownerName);
			prep.setString(3, email);
			result = prep.executeUpdate();
			
		} 
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("ERROR_FAVORITE_ADD");			
		}
		
		return result;
	}

	@Override
	public int deleteGoodIntoTable(String email, String goodCode)
{
		// TODO Auto-generated method stub
		int result = 0;
		try 
		{
			Connection conn = DBConnection.getConnection();
			String sql = "DELETE FROM favoriteT WHERE email=? AND goodCode=?";
			PreparedStatement prep = conn.prepareStatement(sql);
			prep.setString(1, email);	
			prep.setString(2, goodCode);
			result = prep.executeUpdate();
			
		} 
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("ERROR_FAVORITE_DEL");			
		}
		
		return result;
	}

	@Override
	public String showFavoriteTable(String email) 
	{
		// TODO Auto-generated method stub
		ArrayList<cellphone> cellphoneList = new ArrayList<cellphone>();
		Connection conn = null;
		ResultSet resultSet = null;
		try 
		{	
			conn = DBConnection.getConnection();
			String sql = "select * from goods.cellphone where goodCode in ( select goodCode from goods.favoritet where email=?)"; 
					
			PreparedStatement prep = conn.prepareStatement(sql);
			prep.setString(1, email);
			resultSet = prep.executeQuery();
			while(resultSet.next())
			{
				cellphone cellphone = new cellphone();				
				cellphone.setCategory(resultSet.getString("category"));
				cellphone.setName(resultSet.getString("name"));
				cellphone.setPicture(resultSet.getString("picture"));
				cellphone.setShopName(resultSet.getString("shopName"));
				cellphone.setPrice(resultSet.getString("price"));
				cellphone.setBrand(resultSet.getString("brand"));
				cellphone.setModel(resultSet.getString("model"));
				cellphone.setFuselageColor(resultSet.getString("fuselageColor"));
				cellphone.setPixel(resultSet.getString("pixel"));
				cellphone.setNetwork(resultSet.getString("network"));
				cellphone.setScreenSize(resultSet.getString("screenSize"));
				cellphone.setCpu(resultSet.getString("cpu"));
				cellphone.setSystem(resultSet.getString("system"));
				cellphone.setFuselageMemory(resultSet.getString("fuselageMemory"));
				cellphone.setBatteryCapacity(resultSet.getString("batteryCapacity"));
				cellphone.setRunMemory(resultSet.getString("runMemory"));
				cellphone.setGoodCode(resultSet.getString("goodCode"));
				//最后将单次查询的内容添加到cellphonesList中
				cellphoneList.add(cellphone);
				
			}
						
		} 
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("ERROR_FAVORITE_SHOW");
		}
			
		Gson gson = new Gson();
		String favoriteGoodsJson = gson.toJson(cellphoneList);
		System.out.println(favoriteGoodsJson);
		return favoriteGoodsJson;
		
	}

	@Override
	public String searchFavoriteTable(String email, String goodCode) 
	{
		// TODO Auto-generated method stub
		cellphone cellphone = new cellphone();
		Connection conn = null;
		PreparedStatement prep = null;
		ResultSet resultSet = null;
		
		try 
		{
			conn = DBConnection.getConnection();
			String sql = "SELECT * FROM goods.favoritet WHERE email=? AND goodCode=?";
			conn.prepareStatement(sql);
			prep.setString(1, email);
			prep.setString(2, goodCode);
			if(resultSet.next())
			{
				resultSet = prep.executeQuery();
				cellphone.setCategory(resultSet.getString("category"));
				cellphone.setName(resultSet.getString("name"));
				cellphone.setPicture(resultSet.getString("picture"));
				cellphone.setShopName(resultSet.getString("shopName"));
				cellphone.setPrice(resultSet.getString("price"));
				cellphone.setBrand(resultSet.getString("brand"));
				cellphone.setModel(resultSet.getString("model"));
				cellphone.setFuselageColor(resultSet.getString("fuselageColor"));
				cellphone.setPixel(resultSet.getString("pixel"));
				cellphone.setNetwork(resultSet.getString("network"));
				cellphone.setScreenSize(resultSet.getString("screenSize"));
				cellphone.setCpu(resultSet.getString("cpu"));
				cellphone.setSystem(resultSet.getString("system"));
				cellphone.setFuselageMemory(resultSet.getString("fuselageMemory"));
				cellphone.setBatteryCapacity(resultSet.getString("batteryCapacity"));
				cellphone.setRunMemory(resultSet.getString("runMemory"));
				cellphone.setGoodCode(resultSet.getString("goodCode"));
			}
		} 
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("ERROR_FAVORITE_FIND");
		}
		
		Gson gson = new Gson();
		String favoriteGoodsFindJson = gson.toJson(cellphone);
		System.out.println(favoriteGoodsFindJson);
		return favoriteGoodsFindJson;
				
	}
	
}
