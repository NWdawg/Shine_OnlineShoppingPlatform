package com.DD.bean;

/**
 * 
 * @ClassName: discountt
 * @Description: TODO(对应于数据库中discountt的实体类)
 * @author @mollyunfei
 * @date 2018年7月24日 下午3:00:17
 *
 */
public class discountt {
	private String goodCode;// 商品唯一码
	private String name;// 商品名称

	public String getGoodCode() {
		return goodCode;
	}

	public void setGoodCode(String goodCode) {
		this.goodCode = goodCode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
