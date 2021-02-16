package com.DD.bean;

/**
 * 
 * @ClassName: ordert
 * @Description: TODO(ordert订单表中的实体类)
 * @author @mollyunfei
 * @date 2018年7月24日 下午3:10:18
 *
 */
public class ordert {
	private String goodCode;// 商品唯一码
	private String owner;// 商品主人
	private String orderNo;// 商品唯一订单号
	private String email;// 商品主人邮箱
	private String num;//订单数量

	public String getGoodCode() {
		return goodCode;
	}

	public void setGoodCode(String goodCode) {
		this.goodCode = goodCode;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

}
