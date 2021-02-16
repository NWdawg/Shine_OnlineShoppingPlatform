package com.DD.bean;

/**
 * 
 * @ClassName: commentst
 * @Description: TODO(对应于数据库中commentst评论表)
 * @author @mollyunfei
 * @date 2018年7月24日 下午2:54:07
 *
 */
public class commentst {
	private String goodCode;// 商品唯一码
	private String owner;// 商品主人
	private String email;// 邮箱
	private String commentsContent;// 评论内容

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

	public String getCommentsContent() {
		return commentsContent;
	}

	public void setCommentsContent(String commentsContent) {
		this.commentsContent = commentsContent;
	}
}
