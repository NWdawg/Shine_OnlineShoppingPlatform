package com.DD.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.DD.bean.cellphone;
import com.DD.daoImpl.goodsSearchDaoImpl;
import com.google.gson.Gson;
import com.mysql.jdbc.Statement;

/**
 * 
 * @ClassName: goodsSearchDao
 * @Description: TODO(商品检索--分类检索Dao)
 * @author @mollyunfei
 * @date 2018年7月24日 下午3:24:43
 *
 */
public class goodsSearchDao implements goodsSearchDaoImpl {

	
	//下面是条件查询PQ--PartQuery
		//组合搜索查询—多条件组合查询—商品名、店铺名查询
		//查询所需商品—条件快速商品名查询/店铺名查询
		@Override
		public String searchGoodsDetailPQ(String shopName, String name) throws Exception {
			// TODO Auto-generated method stub
			//采用拼接方式，把两种条件查询合并为一个
			//and shopName like '%哈秋%' and name like '%微软%' 
			String pqString="";
			if (!"".equals(shopName)) {
				pqString+=" shopName like '%"+shopName+"%'";
			}else if (!"".equals(shopName)&!"".equals(name)) {
				pqString+="and name like '%"+name+"%'";
			}else if ("".equals(shopName)&!"".equals(name)) {
				pqString+=" name like '%"+name+"%'";
			}
			
			String pqJson="";
			//防止整个数据量被全盘爬取--SQL注入攻击---必须进行空校验
			if (!"".equals(pqString)) {
				Connection connection=new DBConnection().getConnection();
				//下面进行拼接出完整的sql语句
				String sql="select * from goods.cellphone where "+pqString;
				Statement statement =(Statement) connection.createStatement();
				ResultSet resultSet=statement.executeQuery(sql);
				//由于查询出来的结果可能有多个--因此采用一个List
				List<cellphone> cellphonesList=new ArrayList<cellphone>();
				cellphone cellphone=null;
				while (resultSet.next()) {
					cellphone =new cellphone();
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
					cellphonesList.add(cellphone);
				}
				Gson gson=new Gson();
				//序列化为Json数据
				pqJson=gson.toJson(cellphonesList);
				System.out.println("pqJson: "+pqJson);
			}
			return pqJson;
		}	

		/**
	 * 
	* @Title: main 
	* @Description: TODO(main方法测试函数) 
	* @param @param args
	* @param @throws Exception    设定文件 
	* @return void    返回类型 
	* @throws
	 */
	public static void main(String[] args) throws Exception {
		new goodsSearchDao().searchgoodsHot();
	}
	
	// 查询商品明细
	/**
	 * @return 
	 * @throws Exception
	 * 
	 * @Title: searchGoodsDeatil @Description:
	 * TODO(需要传入某个商品唯一码goodCode来查询) @param @param goodCode @param @throws
	 * Exception 设定文件 @return void 返回类型 @throws
	 */
	public String searchGoodsDeatil(String goodCode) throws Exception {
		Connection connection = DBConnection.getConnection();
		String sql = "SELECT * FROM goods.cellphone where goodCode='" + goodCode + "'";
		Statement statement = (Statement) connection.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);
		// 由于商品唯一码必定唯一，因此一次根据goodCode检索，一次只能返回一个商品信息
		cellphone cellphone = null;
		if (resultSet.next()) {
			cellphone = new cellphone();
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
		Gson gson = new Gson();
		String goodsDetailJson = gson.toJson(cellphone);
		System.out.println(goodsDetailJson);
		return goodsDetailJson;
	}

	// 下面开始分类查询商品
	// 首先是查询最新商品

	// 查询热卖商品
	@Override
	public String searchgoodsHot() throws Exception {
		new DBConnection();
		// TODO Auto-generated method stub
		Connection connection = DBConnection.getConnection();
		String sql = "select * from goods.hotgoodst A left join goods.cellphone B on A.goodCode=B.goodCode order by rand() limit 6;";
		Statement statement = (Statement) connection.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);
		// 由于现在查询的数据可能为一个集合，因此用while
		List<cellphone> cellphonesList = new ArrayList<cellphone>();
		cellphone cellphone = null;
		while (resultSet.next()) {
			cellphone = new cellphone();
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
			// 最后将cellphone加入cellphone的一个List集合中
			cellphonesList.add(cellphone);
		}
		Gson gson = new Gson();
		String goodsDetailHotJson = gson.toJson(cellphonesList);
		System.out.println(goodsDetailHotJson);
		return goodsDetailHotJson;
	}

	//查询打折促销商品
	
	@Override
	public String searchgoodsDiscount() throws Exception {
		new DBConnection();
		Connection connection=DBConnection.getConnection();
		String sql="select * from goods.discountt A left join goods.cellphone B on A.goodCode=B.goodCode order by rand() limit 6;";
		Statement statement=(Statement) connection.createStatement();
		ResultSet resultSet=statement.executeQuery(sql);
		List<cellphone> cellphonesList=new ArrayList<cellphone>();
		cellphone cellphone=null;
		while (resultSet.next()) {
			cellphone=new cellphone();
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
			cellphonesList.add(cellphone);
		}
		//下面开始将得到的cellphonesList转换成json字符串
		Gson gson=new Gson();
		String discountsJson=gson.toJson(cellphonesList);
		System.out.println(discountsJson);
		return discountsJson;
	}

}
