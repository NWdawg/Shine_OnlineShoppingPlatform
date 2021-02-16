package com.DD.bean;

/**
 * 
 * @ClassName: shoppingcart
 * @Description: TODO(shoppingcart购物车表中的实体类)
 * @author @mollyunfei
 * @date 2018年7月24日 下午3:12:26
 *
 */
public class shoppingcart {
	private String goodCode;// 商品唯一码
	private String owner;// 商品主人
	private String email;// 商品主人邮箱
	private String num;//购物车商品数量

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
