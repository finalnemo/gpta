package com.zhu.form;

import org.apache.struts.action.ActionForm;

public class LoginForm extends ActionForm {

	String userid;

	String password;

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

}
