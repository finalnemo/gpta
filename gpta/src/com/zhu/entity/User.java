package com.zhu.entity;

import java.sql.Timestamp;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private String id;
	private String userid;
	private String password;
	private String phone;
	private String email;
	private String birthday;
	private String idcard;
	private String address;
	private String score;
	private Timestamp lastlogindate;

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String id, String userid, String password) {
		this.id = id;
		this.userid = userid;
		this.password = password;
	}

	/** full constructor */
	public User(String id, String userid, String password, String phone,
			String email, String birthday, String idcard, String address,
			String score, Timestamp lastlogindate) {
		this.id = id;
		this.userid = userid;
		this.password = password;
		this.phone = phone;
		this.email = email;
		this.birthday = birthday;
		this.idcard = idcard;
		this.address = address;
		this.score = score;
		this.lastlogindate = lastlogindate;
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

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirthday() {
		return this.birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getIdcard() {
		return this.idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getScore() {
		return this.score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public Timestamp getLastlogindate() {
		return this.lastlogindate;
	}

	public void setLastlogindate(Timestamp lastlogindate) {
		this.lastlogindate = lastlogindate;
	}

}