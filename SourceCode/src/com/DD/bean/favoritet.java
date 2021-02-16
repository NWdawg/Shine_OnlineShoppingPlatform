package com.DD.bean;

/**
 * 
 * @ClassName: favoritet
 * @Description: TODO(对应于favoritet收藏夹的实体类)
 * @author @mollyunfei
 * @date 2018年7月24日 下午3:02:10
 *
 */
public class favoritet {
	private String goodCode;// 商品唯一码
	private String owner;// 商品主人
	private String email;// 商品主人邮箱

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

}
