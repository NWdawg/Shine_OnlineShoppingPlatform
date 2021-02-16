package com.DD.bean;

/**
 * 
 * @ClassName: cellphone
 * @Description: TODO(对应于数据库中cellphone表的实体类)
 * @author @mollyunfei
 * @date 2018年7月24日 下午2:52:52
 *
 */
public class cellphone {
	private String category;// 分类
	private String name;// 手机名称
	private String picture;// 手机图片
	private String shopName;// 商店名称
	private String price;// 价格
	private String brand;// 品牌
	private String model;// 型号
	private String fuselageColor;// 机身颜色
	private String pixel;// 像素
	private String network;// 网络
	private String screenSize;// 屏幕尺寸
	private String cpu;// CPU核数
	private String system;// 系统
	private String fuselageMemory;// 机身内存
	private String batteryCapacity;// 电池容量
	private String runMemory;// 运行内存

	// ----购物车联立查询时
	private String goodCode;// 商品唯一码
	private String owner;// 商品主人
	private String email;// 商品主人邮箱
	private String num;// 购物车商品数量

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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getFuselageColor() {
		return fuselageColor;
	}

	public void setFuselageColor(String fuselageColor) {
		this.fuselageColor = fuselageColor;
	}

	public String getPixel() {
		return pixel;
	}

	public void setPixel(String pixel) {
		this.pixel = pixel;
	}

	public String getNetwork() {
		return network;
	}

	public void setNetwork(String network) {
		this.network = network;
	}

	public String getScreenSize() {
		return screenSize;
	}

	public void setScreenSize(String screenSize) {
		this.screenSize = screenSize;
	}

	public String getCpu() {
		return cpu;
	}

	public void setCpu(String cpu) {
		this.cpu = cpu;
	}

	public String getSystem() {
		return system;
	}

	public void setSystem(String system) {
		this.system = system;
	}

	public String getFuselageMemory() {
		return fuselageMemory;
	}

	public void setFuselageMemory(String fuselageMemory) {
		this.fuselageMemory = fuselageMemory;
	}

	public String getBatteryCapacity() {
		return batteryCapacity;
	}

	public void setBatteryCapacity(String batteryCapacity) {
		this.batteryCapacity = batteryCapacity;
	}

	public String getRunMemory() {
		return runMemory;
	}

	public void setRunMemory(String runMemory) {
		this.runMemory = runMemory;
	}
}
