package com.DD.bean;

/**
 * 
 * @ClassName: customerst
 * @Description: TODO(此customerst对应于数据库中的customerst中的实体类)
 * @author @mollyunfei
 * @date 2018年7月24日 下午2:57:11
 *
 */
public class customerst {
	private String email;// 会员邮箱
	private String password;// 会员密码
	private String surfaceStyle;// 会员界面风格
	private String ownerName;// 会员名
	private String bonusPoints;// 会员消费积分
	private String rank;// 会员等级

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSurfaceStyle() {
		return surfaceStyle;
	}

	public void setSurfaceStyle(String surfaceStyle) {
		this.surfaceStyle = surfaceStyle;
	}

	public String getOwnerName() {
		return ownerName;
	}

	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}

	public String getBonusPoints() {
		return bonusPoints;
	}

	public void setBonusPoints(String bonusPoints) {
		this.bonusPoints = bonusPoints;
	}

	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

}
