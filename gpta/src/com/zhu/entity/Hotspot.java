package com.zhu.entity;

/**
 * Hotspot entity. @author MyEclipse Persistence Tools
 */

public class Hotspot implements java.io.Serializable {

	// Fields

	private String id;
	private String title;
	private String province;
	private String city;
	private String area;
	private String spotname;
	private Integer day;
	private Double price;
	private String date;
	private Integer discount;
	private String remark;
	private String d1;
	private String d2;
	private String d3;
	private String d4;
	private String d5;
	private String d6;
	private String d7;
	private String d8;
	private String d9;
	private String d10;

	// Constructors

	/** default constructor */
	public Hotspot() {
	}

	/** minimal constructor */
	public Hotspot(String id) {
		this.id = id;
	}

	/** full constructor */
	public Hotspot(String id, String title, String province, String city,
			String area, String spotname, Integer day, Double price,
			String date, Integer discount, String remark, String d1, String d2,
			String d3, String d4, String d5, String d6, String d7, String d8,
			String d9, String d10) {
		this.id = id;
		this.title = title;
		this.province = province;
		this.city = city;
		this.area = area;
		this.spotname = spotname;
		this.day = day;
		this.price = price;
		this.date = date;
		this.discount = discount;
		this.remark = remark;
		this.d1 = d1;
		this.d2 = d2;
		this.d3 = d3;
		this.d4 = d4;
		this.d5 = d5;
		this.d6 = d6;
		this.d7 = d7;
		this.d8 = d8;
		this.d9 = d9;
		this.d10 = d10;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getProvince() {
		return this.province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getArea() {
		return this.area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getSpotname() {
		return this.spotname;
	}

	public void setSpotname(String spotname) {
		this.spotname = spotname;
	}

	public Integer getDay() {
		return this.day;
	}

	public void setDay(Integer day) {
		this.day = day;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Integer getDiscount() {
		return this.discount;
	}

	public void setDiscount(Integer discount) {
		this.discount = discount;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getD1() {
		return this.d1;
	}

	public void setD1(String d1) {
		this.d1 = d1;
	}

	public String getD2() {
		return this.d2;
	}

	public void setD2(String d2) {
		this.d2 = d2;
	}

	public String getD3() {
		return this.d3;
	}

	public void setD3(String d3) {
		this.d3 = d3;
	}

	public String getD4() {
		return this.d4;
	}

	public void setD4(String d4) {
		this.d4 = d4;
	}

	public String getD5() {
		return this.d5;
	}

	public void setD5(String d5) {
		this.d5 = d5;
	}

	public String getD6() {
		return this.d6;
	}

	public void setD6(String d6) {
		this.d6 = d6;
	}

	public String getD7() {
		return this.d7;
	}

	public void setD7(String d7) {
		this.d7 = d7;
	}

	public String getD8() {
		return this.d8;
	}

	public void setD8(String d8) {
		this.d8 = d8;
	}

	public String getD9() {
		return this.d9;
	}

	public void setD9(String d9) {
		this.d9 = d9;
	}

	public String getD10() {
		return this.d10;
	}

	public void setD10(String d10) {
		this.d10 = d10;
	}

}