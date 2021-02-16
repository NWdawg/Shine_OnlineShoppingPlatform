package com.DD.test;

import java.util.UUID;

import org.junit.Test;
import org.omg.CORBA.PUBLIC_MEMBER;

import com.DD.dao.DBConnection;
import com.DD.dao.goodsSearchDao;
import com.DD.dao.memberManagementDao;
import com.DD.dao.orderOperationDao;
import com.DD.dao.shoppingCarDao;

public class testDemo {

	/**
	 * 
	 * @Title: demo @Description: TODO(测试) @param 设定文件 @return void 返回类型 @throws
	 */
	@Test
	public void demo() {
		System.out.println("1111");
	}

	/**
	 * @throws Exception
	 * 
	 * @Title: testDBConnection @Description: TODO(测试DB连接) @param 设定文件 @return
	 *         void 返回类型 @throws
	 */
	@Test
	public void testDBConnection() throws Exception {
		System.out.println(DBConnection.getConnection());
	}

	/**
	 * 
	 * @Title: testSearchGoodsDeatil @Description:
	 *         TODO(查询某个商品详情页) @param @throws Exception 设定文件 @return void
	 *         返回类型 @throws
	 */
	@Test
	public void testSearchGoodsDeatil() throws Exception {
		new goodsSearchDao().searchGoodsDeatil("");
	}

	/**
	 * @throws Exception
	 * 
	 * @Title: testSearchgoodsHot @Description: TODO(分类检索热卖商品) @param
	 *         设定文件 @return void 返回类型 @throws
	 */
	@Test
	public void testSearchgoodsHot() throws Exception {
		new goodsSearchDao().searchgoodsHot();
	}

	/**
	 * @throws Exception
	 * 
	 * @Title: testSearchgoodsDiscount @Description: TODO(测试打折商品生成json) @param
	 *         设定文件 @return void 返回类型 @throws
	 */
	@Test
	public void testSearchgoodsDiscount() throws Exception {
		new goodsSearchDao().searchgoodsDiscount();
	}

	/**
	 * 
	 * @Title: testSearchOrderDetail @Description: TODO(测试订单查询明细) @param @throws
	 *         Exception 设定文件 @return void 返回类型 @throws
	 */
	@Test
	public void testSearchOrderDetail() throws Exception {
		new orderOperationDao().searchOrderDetail("001eea762f8b40d3846f0ca215cb4039");
	}

	/**
	 * 
	 * @Title: testAddCellphone @Description: TODO(购物车增加商品测试) @param
	 *         设定文件 @return void 返回类型 @throws
	 */
	@Test
	public void testAddCellphone() {
		new shoppingCarDao().addGoodsIntoShoppingCar("02473b093b6a42a6b69c41d80c4acd90", "2776793315@qq.com", "1");
	}

	/**
	 * 
	 * @Title: testDeleteCellphone @Description: TODO(删除购物车商品测试) @param
	 *         设定文件 @return void 返回类型 @throws
	 */
	@Test
	public void testDeleteCellphone() {
		new shoppingCarDao().deleteCellphone("02473b093b6a42a6b69c41d80c4acd90", "2776793315@qq.com");
	}

	/**
	 * @throws Exception
	 * 
	 * @Title: testSearchOrderDetailPQ @Description: TODO(测试订单页条件查询) @param
	 *         设定文件 @return void 返回类型 @throws
	 */
	@Test
	public void testSearchOrderDetailPQ() throws Exception {
		new orderOperationDao().searchOrderDetailPQ("2776793315@qq.com", "哈秋", "微软");
	}

	/**
	 * @throws Exception
	 * 
	 * @Title: testAddIntoFavoriteFromOrder @Description:
	 *         TODO(这里用一句话描述这个方法的作用) @param 设定文件 @return void 返回类型 @throws
	 */
	@Test
	public void testAddIntoFavoriteFromOrder() throws Exception {
		new orderOperationDao().addIntoFavoriteFromOrder("0adda2d061024091a0a5a3d9916f81cf", "", "2776793315@qq.com");
	}

	/**
	 * @throws Exception
	 * 
	 * @Title: testChangeGoodCont @Description: TODO(修改购物车某个商品数量) @param
	 * 设定文件 @return void 返回类型 @throws
	 */
	@Test
	public void testChangeGoodCont() throws Exception {
		new shoppingCarDao().changeGoodCont("2776793315@qq.com", "111", "00e32b581ac74662b8096b611e7c8549", 3);
	}

	/**
	 * 
	 * @Title: testDeleteAllInThisShoppingCart @Description:
	 * TODO(清空购物车操作--注意在实际操作时对购物车表进行备份) @param @throws Exception 设定文件 @return
	 * void 返回类型 @throws
	 */
	@Test
	public void testDeleteAllInThisShoppingCart() throws Exception {
		new shoppingCarDao().deleteAllInThisShoppingCart("2776793315@qq.com", "111");
	}

	/**
	 * 
	 * @Title: testMemberUpdate @Description: TODO(会员信息更新测试) @param 设定文件 @return
	 * void 返回类型 @throws
	 */
	@Test
	public void testMemberUpdate() {
		new memberManagementDao().memberUpdate("2776793315@qq.com", "123", "", "");
	}

	/**
	 * 
	 * @Title: tesTfindOrderByEmail @Description: TODO(查询当前登录者的以往订单测试) @param
	 * 设定文件 @return void 返回类型 @throws
	 */
	@Test
	public void tesTfindOrderByEmail() {
		new memberManagementDao().findOrderByEmail("2776793315@qq.com");
	}

	/**
	 * 
	 * @Title: testFindInterestByEmail @Description: TODO(查看以往感兴趣商品) @param
	 * 设定文件 @return void 返回类型 @throws
	 */
	@Test
	public void testFindInterestByEmail() {
		new memberManagementDao().findInterestByEmail("2776793315@qq.com");
	}

	/**
	 * 
	 * @Title: testFindCustomersByEmail @Description: TODO(通过邮箱查看会员信息测试) @param
	 * 设定文件 @return void 返回类型 @throws
	 */
	@Test
	public void testFindCustomersByEmail() {
		new memberManagementDao().findCustomersByEmail("2776793315@qq.com");
	}

	/**
	 * 
	 * @Title: testOrderListSearch @Description: TODO(查询订单列表测试) @param
	 * 设定文件 @return void 返回类型 @throws
	 */
	@Test
	public void testOrderListSearch() {
		new orderOperationDao().orderListSearch("2776793315@qq.com");
	}

	/**
	 * 
	 * @Title: testOrderDelete @Description: TODO(订单删除测试) @param 设定文件 @return
	 * void 返回类型 @throws
	 */
	@Test
	public void testOrderDelete() {
		new orderOperationDao().orderDelete("1fab194db42c4cd19324091f8411969d");
	}

	/**
	 * 
	 * @Title: testUUID @Description: TODO(测试生成UUID)
	 * db7960b34792489081cd96ef09de3c82 1fab194db42c4cd19324091f8411969d
	 * eafd8752954b49058118c60369579e6b 650ba051721749348f55e5c30251646d
	 * 99ff3a92f706445a9d86d9219e1a0367 ed4dcef4c6df42cd96346eb6f2ad7793
	 * 6fa23afa575646c49e4cc5df13b31aa3 a3282578e03c4e04b1580706685acc5e
	 * 7ebe58712676407bb6ee6f5c2fd9f3b9 1796edb815ee4d74825d84b2a1960b22
	 * 
	 * @param 设定文件 @return void 返回类型 @throws
	 */
	@Test
	public void testUUID() {
		for (int i = 0; i < 10; i++) {
			System.out.println(UUID.randomUUID().toString().replaceAll("-", "").trim());
		}
	}

	
	/**
	 * 
	* @Title: testAddcomment 
	* @Description: TODO(增加评论测试) 
	* @param     设定文件 
	* @return void    返回类型 
	* @throws
	 */
	@Test
	public void testAddcomment(){
		new orderOperationDao().addComment("0134b968e8a547ab9bc24113ebf549bc", "liyunfei", "2776793315@qq.com", "手机质量非常好，下次还回来！！！老板很帅气！！！");
	}
	
	/**
	 * 
	* @Title: testdeleteComment 
	* @Description: TODO(删除评论测试) 
	* @param     设定文件 
	* @return void    返回类型 
	* @throws
	 */
	@Test
	public void testDeleteComment(){
		new orderOperationDao().deleteComment("d45aa2802b114414baceeefb3942d98d");
	}
	
	/**
	 * @throws Exception 
	 * 
	* @Title: testcheckHasEmail 
	* @Description: TODO(检查某个email是否已经注册测试) 
	* @param     设定文件 
	* @return void    返回类型 
	* @throws
	 */
	@Test
	public void testCheckHasEmail() throws Exception{
		new memberManagementDao().checkHasEmail("123@qq.com");
	}
	
	/**
	 * @throws Exception 
	 * 
	* @Title: testUserRegistD 
	* @Description: TODO(会员注册测试) 
	* @param     设定文件 
	* @return void    返回类型 
	* @throws
	 */
	@Test
	public void testUserRegistD() throws Exception{
		new memberManagementDao().userRegistD("testDemo", "testDemo@imollyunfei.top", "123");
	}
	
	/**
	 * @throws Exception 
	 * 
	* @Title: testSearchGoodsDetailPQ 
	* @Description: TODO(条件查询测试) 
	* @param     设定文件 
	* @return void    返回类型 
	* @throws
	 */
	@Test
	public void testSearchGoodsDetailPQ() throws Exception{
		//测试--两者不能同时为空--实际上在Dao层已经有措施--所以也不怕啦~
		new goodsSearchDao().searchGoodsDetailPQ("京东", "");
	}
	
	/**
	 * @throws Exception 
	 * 
	* @Title: testSearchAllComment 
	* @Description: TODO(获取当前goodCode所有评论) 
	* @param     设定文件 
	* @return void    返回类型 
	* @throws
	 */
	@Test
	public void testSearchAllComment() throws Exception{
		new orderOperationDao().searchAllComment("1c5982a1434c44248a02a1aaa54e55d5");
	}
	
	/**
	 * 
	* @Title: testFindShoppingCarByEmail 
	* @Description: TODO(加载购物车列表测试) 
	* @param     设定文件 
	* @return void    返回类型 
	* @throws
	 */
	@Test
	public void testFindShoppingCarByEmail(){
		new shoppingCarDao().findShoppingCarByEmail("2776793315@qq.com");
	}
	
	/**
	 * @throws Exception 
	 * 
	* @Title: testCheckLogin 
	* @Description: TODO(登录测试) 
	* @param     设定文件 
	* @return void    返回类型 
	* @throws
	 */
	@Test
	public void testCheckLogin() throws Exception{
		new memberManagementDao().checkLogin("doGet@qq.com", "doGet");
	}
	
}
