package com.zhu.entity;

import java.sql.Timestamp;

/**
 * Admin entity. @author MyEclipse Persistence Tools
 */

public class Admin implements java.io.Serializable {

	// Fields

	private String id;
	private String userid;
	private String password;
	private Integer lockflag;
	private Integer wrongtimes;
	private Integer flag;
	private Timestamp lastlogindate;

	// Constructors

	/** default constructor */
	public Admin() {
	}

	/** minimal constructor */
	public Admin(String id, String userid, String password) {
		this.id = id;
		this.userid = userid;
		this.password = password;
	}

	/** full constructor */
	public Admin(String id, String userid, String password, Integer lockflag,
			Integer wrongtimes, Integer flag, Timestamp lastlogindate) {
		this.id = id;
		this.userid = userid;
		this.password = password;
		this.lockflag = lockflag;
		this.wrongtimes = wrongtimes;
		this.flag = flag;
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

	public Integer getLockflag() {
		return this.lockflag;
	}

	public void setLockflag(Integer lockflag) {
		this.lockflag = lockflag;
	}

	public Integer getWrongtimes() {
		return this.wrongtimes;
	}

	public void setWrongtimes(Integer wrongtimes) {
		this.wrongtimes = wrongtimes;
	}

	public Integer getFlag() {
		return this.flag;
	}

	public void setFlag(Integer flag) {
		this.flag = flag;
	}

	public Timestamp getLastlogindate() {
		return this.lastlogindate;
	}

	public void setLastlogindate(Timestamp lastlogindate) {
		this.lastlogindate = lastlogindate;
	}

}