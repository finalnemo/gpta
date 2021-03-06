/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.zhu.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.zhu.entity.User;
import com.zhu.form.RegisterForm;
import com.zhu.service.UserService;
import com.zhu.util.MD5;
import com.zhu.util.UUID;

/**
 * MyEclipse Struts Creation date: 04-06-2015
 * 
 * XDoclet definition:
 * 
 * @struts.action validate="true"
 */
public class RegisterAction extends DispatchAction {

	/**
	 * Method execute
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward init(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		return mapping.findForward("list");
	}

	public void validate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		RegisterForm registerForm = (RegisterForm) form;
		String userid = registerForm.getUserid();
		String password = registerForm.getPassword();
		String phone = registerForm.getPhone();
		String birthday = registerForm.getBirthday();
		String email = registerForm.getEmail();
		UserService userService = new UserService();
		User user = new User();
		MD5 md5 = new MD5();
		UUID uuid = new UUID();
		long count = userService.getUserId(userid);
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		int back = 0;
		if (count > 0) {
			back = 1;
			out.print(back);
			out.flush();
			out.close();
		} else {
			user.setId(uuid.getUUID());
			user.setUserid(userid);
			user.setPassword(md5.GetMD5Code(password));
			user.setEmail(email);
			Date date = new Date();
			Timestamp ts = new Timestamp(date.getTime());
			user.setLastlogindate(ts);
			session.setAttribute("user", user);
			userService.addUser(user);
			out.print(back);
			out.flush();
			out.close();
		}
	}
}