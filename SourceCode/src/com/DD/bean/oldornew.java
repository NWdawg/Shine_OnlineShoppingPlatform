package com.DD.bean;

/**
 * 
 * @ClassName: oldornew
 * @Description: TODO(oldornew新旧表中的实体类)
 * @author @mollyunfei
 * @date 2018年7月24日 下午3:08:34
 *
 */
public class oldornew {
	private String goodCode;// 商品唯一码
	private String status;// 商品新旧状态

	public String getGoodCode() {
		return goodCode;
	}

	public void setGoodCode(String goodCode) {
		this.goodCode = goodCode;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}
