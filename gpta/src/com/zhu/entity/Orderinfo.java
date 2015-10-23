package com.zhu.entity;

/**
 * Orderinfo entity. @author MyEclipse Persistence Tools
 */

public class Orderinfo implements java.io.Serializable {

	// Fields

	private String id;
	private String userid;
	private String spotid;
	private String carid;
	private Integer num;
	private Double price;
	private Integer status;
	private String date;
	private String n1;
	private String n2;
	private String n3;
	private String n4;
	private String n5;
	private String n6;
	private String n7;
	private String n8;
	private String n9;
	private String n10;
	private String i1;
	private String i2;
	private String i3;
	private String i4;
	private String i5;
	private String i6;
	private String i7;
	private String i8;
	private String i9;
	private String i10;

	// Constructors

	/** default constructor */
	public Orderinfo() {
	}

	/** minimal constructor */
	public Orderinfo(String id, String userid, String spotid) {
		this.id = id;
		this.userid = userid;
		this.spotid = spotid;
	}

	/** full constructor */
	public Orderinfo(String id, String userid, String spotid, String carid,
			Integer num, Double price, Integer status, String date, String n1,
			String n2, String n3, String n4, String n5, String n6, String n7,
			String n8, String n9, String n10, String i1, String i2, String i3,
			String i4, String i5, String i6, String i7, String i8, String i9,
			String i10) {
		this.id = id;
		this.userid = userid;
		this.spotid = spotid;
		this.carid = carid;
		this.num = num;
		this.price = price;
		this.status = status;
		this.date = date;
		this.n1 = n1;
		this.n2 = n2;
		this.n3 = n3;
		this.n4 = n4;
		this.n5 = n5;
		this.n6 = n6;
		this.n7 = n7;
		this.n8 = n8;
		this.n9 = n9;
		this.n10 = n10;
		this.i1 = i1;
		this.i2 = i2;
		this.i3 = i3;
		this.i4 = i4;
		this.i5 = i5;
		this.i6 = i6;
		this.i7 = i7;
		this.i8 = i8;
		this.i9 = i9;
		this.i10 = i10;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserid() {
		return this.userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getSpotid() {
		return this.spotid;
	}

	public void setSpotid(String spotid) {
		this.spotid = spotid;
	}

	public String getCarid() {
		return this.carid;
	}

	public void setCarid(String carid) {
		this.carid = carid;
	}

	public Integer getNum() {
		return this.num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getN1() {
		return this.n1;
	}

	public void setN1(String n1) {
		this.n1 = n1;
	}

	public String getN2() {
		return this.n2;
	}

	public void setN2(String n2) {
		this.n2 = n2;
	}

	public String getN3() {
		return this.n3;
	}

	public void setN3(String n3) {
		this.n3 = n3;
	}

	public String getN4() {
		return this.n4;
	}

	public void setN4(String n4) {
		this.n4 = n4;
	}

	public String getN5() {
		return this.n5;
	}

	public void setN5(String n5) {
		this.n5 = n5;
	}

	public String getN6() {
		return this.n6;
	}

	public void setN6(String n6) {
		this.n6 = n6;
	}

	public String getN7() {
		return this.n7;
	}

	public void setN7(String n7) {
		this.n7 = n7;
	}

	public String getN8() {
		return this.n8;
	}

	public void setN8(String n8) {
		this.n8 = n8;
	}

	public String getN9() {
		return this.n9;
	}

	public void setN9(String n9) {
		this.n9 = n9;
	}

	public String getN10() {
		return this.n10;
	}

	public void setN10(String n10) {
		this.n10 = n10;
	}

	public String getI1() {
		return this.i1;
	}

	public void setI1(String i1) {
		this.i1 = i1;
	}

	public String getI2() {
		return this.i2;
	}

	public void setI2(String i2) {
		this.i2 = i2;
	}

	public String getI3() {
		return this.i3;
	}

	public void setI3(String i3) {
		this.i3 = i3;
	}

	public String getI4() {
		return this.i4;
	}

	public void setI4(String i4) {
		this.i4 = i4;
	}

	public String getI5() {
		return this.i5;
	}

	public void setI5(String i5) {
		this.i5 = i5;
	}

	public String getI6() {
		return this.i6;
	}

	public void setI6(String i6) {
		this.i6 = i6;
	}

	public String getI7() {
		return this.i7;
	}

	public void setI7(String i7) {
		this.i7 = i7;
	}

	public String getI8() {
		return this.i8;
	}

	public void setI8(String i8) {
		this.i8 = i8;
	}

	public String getI9() {
		return this.i9;
	}

	public void setI9(String i9) {
		this.i9 = i9;
	}

	public String getI10() {
		return this.i10;
	}

	public void setI10(String i10) {
		this.i10 = i10;
	}

}