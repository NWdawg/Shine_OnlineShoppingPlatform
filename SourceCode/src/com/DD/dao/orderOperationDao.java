package com.DD.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.DD.bean.cellphone;
import com.DD.bean.commentst;
import com.DD.bean.ordert;
import com.DD.daoImpl.orderOperationDaoImpl;
import com.google.gson.Gson;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

/**
 * 
 * @ClassName: orderOperation
 * @Description: TODO(orderOperationImpl的实现类)
 * @author @mollyunfei
 * @date 2018年7月25日 上午10:34:23
 *
 */
public class orderOperationDao implements orderOperationDaoImpl {

	// 查询订单列表
	@Override
	public String orderListSearch(String email) {
		ArrayList<ordert> orderlist = new ArrayList<ordert>();
		Connection conn = null; // 定义一个空的连接对象
		String sql = "SELECT * from goods.orderT where email=?";
		PreparedStatement prep = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.getConnection();// 访问数据库的连接
			prep = (PreparedStatement) conn.prepareStatement(sql);
			prep.setString(1, email);
			rs = prep.executeQuery();
			while (rs.next()) {
				ordert ot = new ordert();
				ot.setGoodCode(rs.getString("goodCode"));
				ot.setEmail(email);
				ot.setNum(rs.getString("num"));
				ot.setOwner(rs.getString("owner"));
				ot.setOrderNo(rs.getString("OrderNo"));
				orderlist.add(ot);
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("ERROR_ORDER_FIND");
		}
		Gson gson = new Gson();
		String orderListJson = gson.toJson(orderlist);
		System.out.println(orderListJson);
		return orderListJson;
	}

	// 删除订单
	@Override
	public int orderDelete(String orderNo_para) {
		Connection conn = null;
		String sql = "delete from goods.orderT where orderNo=?";
		PreparedStatement prep = null;
		int result = 0;
		try {
			conn = DBConnection.getConnection();
			prep = (PreparedStatement) conn.prepareStatement(sql);
			prep.setString(1, orderNo_para);
			result = prep.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("ERROR_ORDER_DLELET");
		}

		System.out.println("删除: " + (result != 0));
		return result;
	}

	@Override
	// 查询明细功能
	// 由商品唯一码进行查询明细
	public String searchOrderDetail(String goodCode) throws Exception {
		// TODO Auto-generated method stub
		Connection connection = new DBConnection().getConnection();
		String sql = "select * from goods.cellphone where goodCode='" + goodCode + "'";
		Statement statement = (Statement) connection.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);
		// 由于是根据goodCode--每个都唯一，因此返回结果为一个
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
		String orderGoodsDetail = gson.toJson(cellphone);
		System.out.println(orderGoodsDetail);
		return orderGoodsDetail;
	}

	// 下面是条件查询PQ--PartQuery
	// 组合搜索查询—多条件组合查询—商品名、店铺名查询
	// 查询所需商品—条件快速商品名查询/店铺名查询
	@Override
	public String searchOrderDetailPQ(String email, String shopName, String name) throws Exception {
		// TODO Auto-generated method stub
		// 采用拼接方式，把两种条件查询合并为一个
		// and shopName like '%哈秋%' and name like '%微软%'
		String pqString = "";
		if (!"".equals(shopName)) {
			pqString += "and shopName like '%" + shopName + "%'";
		}
		if (!"".equals(name)) {
			pqString += "and name like '%" + name + "%'";
		}
		Connection connection = new DBConnection().getConnection();
		// 下面进行拼接出完整的sql语句
		String sql = "select * from goods.cellphone where goodCode in (select goodCode from  goods.ordert where email='"
				+ email + "') " + pqString;
		Statement statement = (Statement) connection.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);
		// 由于查询出来的结果可能有多个--因此采用一个List
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
			cellphonesList.add(cellphone);
		}
		Gson gson = new Gson();
		// 序列化为Json数据
		String pqJson = gson.toJson(cellphonesList);
		System.out.println(pqJson);
		return pqJson;

	}

	// 从订单表中删除--增加至收藏夹表
	@Override
	public void addIntoFavoriteFromOrder(String goodCode, String owner, String email) throws Exception {
		// TODO Auto-generated method stub
		Connection connection = new DBConnection().getConnection();
		// 从订单表中删除操作
		String sql1 = "delete from goods.ordert where goodCode='" + goodCode + "'";
		// 收藏夹中增加操作
		String sql2 = "INSERT INTO `goods`.`favoritet` (`goodCode`, `owner`, `email`) VALUES (?, ?, ?);";
		Statement statement = (Statement) connection.createStatement();
		int result = statement.executeUpdate(sql1);
		// 订单删除由于是利用goodCode来删除，因此影响列唯一
		if (result == 1) {
			System.out.println("从订单表中删除成功~");
			// 下面开始收藏夹表中插入数据操作
			PreparedStatement preparedStatement = (PreparedStatement) connection.prepareStatement(sql2);
			preparedStatement.setString(1, goodCode);
			preparedStatement.setString(2, owner);
			preparedStatement.setString(3, email);
			// 获取插入数据之后的返回结果
			int resultIn = preparedStatement.executeUpdate();
			if (resultIn == 1) {
				System.out.println("从订单表删除并添加到收藏夹~");
			} else {
				System.out.println("从订单表中删除但并没有添加至收藏夹~");
			}
		} else {
			System.out.println("从订单表中删除失败~");
		}
	}

	// 增加评论--addComment
	@Override
	public int addComment(String goodcode, String owner, String email, String commentsContent) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement prep = null;
		String sql = "insert into goods.commentst(goodCode,owner,email,commentsContent)" + "values(?,?,?,?)";
		int result = 0;
		try {
			conn = DBConnection.getConnection();
			prep = (PreparedStatement) conn.prepareStatement(sql);
			prep.setString(1, goodcode);
			prep.setString(2, owner);
			prep.setString(3, email);
			prep.setString(4, commentsContent);
			result = prep.executeUpdate();
		} catch (Exception e1) {
			e1.printStackTrace();
		} finally {
		}
		System.out.println("评论result: " + result);
		return result;
	}

	// 删除评论
	@Override
	public void deleteComment(String goodCode) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement prep = null;
		String sql = "delete from  goods.commentst where goodCode =?";
		int result = 0;
		try {
			conn = new DBConnection().getConnection();
			prep = (PreparedStatement) conn.prepareStatement(sql);
			prep.setString(1, goodCode);
			result = prep.executeUpdate();
		} catch (Exception e1) {
			e1.printStackTrace();
		} finally {
		}

		System.out.println("删除评论result: " + result);
	}

	public static void main(String[] args) {
		new orderOperationDao().deleteComment("0560a103ab9e4f60879fc2181b7bf19f");
	}

	// 查找某个商品的全部评论
	@Override
	public String searchAllComment(String goodcode) throws Exception {
		// TODO Auto-generated method stub
		Connection connection = DBConnection.getConnection();
		String sql = "select * from goods.commentst where goodCode='" + goodcode + "'";
		Statement statement = (Statement) connection.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);
		List<commentst> commentstsList = new ArrayList<commentst>();
		commentst commentst = null;
		while (resultSet.next()) {
			commentst = new commentst();
			commentst.setGoodCode(resultSet.getString("goodCode"));
			commentst.setEmail(resultSet.getString("email"));
			commentst.setOwner(resultSet.getString("owner"));
			commentst.setCommentsContent(resultSet.getString("commentsContent"));
			commentstsList.add(commentst);
		}
		Gson gson = new Gson();
		String goodCodeCommemtsJson = gson.toJson(commentstsList);
		System.out.println("goodCodeCommemtsJson: "+goodCodeCommemtsJson);
		return goodCodeCommemtsJson;
	}
}
