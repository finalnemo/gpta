package com.zhu.form;

import org.apache.struts.action.ActionForm;

public class AdminForm extends ActionForm {
	private String id;
	private String userid;
	private String password;
	private Integer lockflag;
	private Integer wrongtimes;
	private Integer flag;
	private String oldpassword;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getLockflag() {
		return lockflag;
	}

	public void setLockflag(Integer lockflag) {
		this.lockflag = lockflag;
	}

	public Integer getWrongtimes() {
		return wrongtimes;
	}

	public void setWrongtimes(Integer wrongtimes) {
		this.wrongtimes = wrongtimes;
	}

	public Integer getFlag() {
		return flag;
	}

	public void setFlag(Integer flag) {
		this.flag = flag;
	}

	public String getOldpassword() {
		return oldpassword;
	}

	public void setOldpassword(String oldpassword) {
		this.oldpassword = oldpassword;
	}

}
