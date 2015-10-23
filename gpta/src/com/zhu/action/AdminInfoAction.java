/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.zhu.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.zhu.entity.Admin;
import com.zhu.entity.User;
import com.zhu.form.AdminForm;
import com.zhu.service.AdminService;
import com.zhu.service.OrderService;
import com.zhu.service.UserService;
import com.zhu.util.MD5;
import com.zhu.util.UUID;

/**
 * MyEclipse Struts Creation date: 04-12-2015
 * 
 * XDoclet definition:
 * 
 * @struts.action parameter="m" validate="true"
 */
public class AdminInfoAction extends DispatchAction {
	/*
	 * Generated Methods
	 */

	/**
	 * Method execute
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward admininfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		if (session.getAttribute("admin") == null) {
			return mapping.findForward("wrong");
		} else {
			AdminService adminService = new AdminService();
			Admin admin = (Admin) session.getAttribute("admin");
			List<Admin> adminlist = adminService.getAllAdmin(admin.getUserid());
			request.setAttribute("admin", adminlist);
			if (session.getAttribute("message") != null) {
				request.removeAttribute("message");
			}
			return mapping.findForward("list");
		}

	}

	public ActionForward exit(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		if (session.getAttribute("admin") == null) {
			return mapping.findForward("wrong");
		} else {
			session.removeAttribute("admin");
			return mapping.findForward("wrong");
		}
	}

	public ActionForward userlist(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		if (session.getAttribute("admin") == null) {
			return mapping.findForward("wrong");
		} else {
			UserService userService = new UserService();
			List<User> userlist = userService.getUserList();
			request.setAttribute("user", userlist);
			return mapping.findForward("user");
		}
	}

	public ActionForward resetuserpwd(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		if (session.getAttribute("admin") == null) {
			return mapping.findForward("wrong");
		} else {
			UserService userService = new UserService();
			AdminForm adminForm = (AdminForm) form;
			// 默认密码123456
			int back = userService.updPWD(adminForm.getId(),
					"e10adc3949ba59abbe56e057f20f883e");
			if (back == 1) {
				request.setAttribute("message", "重置成功");
			}
			List<User> userlist = userService.getUserList();
			request.setAttribute("user", userlist);
			return mapping.findForward("user");
		}

	}

	public ActionForward addadmin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		if (session.getAttribute("admin") == null) {
			return mapping.findForward("wrong");
		} else {
			return mapping.findForward("add");
		}
	}

	public void addadmininfo(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		AdminForm adminForm = (AdminForm) form;
		MD5 md5 = new MD5();
		AdminService adminService = new AdminService();

		String userid = adminForm.getUserid();
		String password = md5.GetMD5Code(adminForm.getPassword());
		int flag = adminForm.getFlag();
		long count = adminService.getUserId(userid);
		int back = 0;
		PrintWriter out = response.getWriter();
		if (count <= 0) {
			Admin admin = new Admin();
			UUID uuid = new UUID();
			admin.setId(uuid.getUUID());
			admin.setUserid(userid);
			admin.setPassword(password);
			admin.setFlag(flag);
			admin.setLockflag(0);
			admin.setWrongtimes(0);
			adminService.addAdmin(admin);
			out.print(back);
			out.flush();
			out.close();
		} else {
			back = 1;
			out.print(back);
			out.flush();
			out.close();
		}
	}

	public ActionForward updlockflag(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		if (session.getAttribute("admin") == null) {
			return mapping.findForward("wrong");
		} else {
			AdminForm adminForm = (AdminForm) form;
			AdminService adminService = new AdminService();
			if (adminForm.getLockflag() == 0) {
				adminService.updWrongTimes(0, adminForm.getUserid());
			}
			adminService.updLockFlag(adminForm.getLockflag(),
					adminForm.getUserid());
			Admin admin = (Admin) session.getAttribute("admin");
			List<Admin> adminlist = adminService.getAllAdmin(admin.getUserid());
			request.setAttribute("admin", adminlist);
			return mapping.findForward("list");
		}

	}

	public ActionForward resetpwd(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		if (session.getAttribute("admin") == null) {
			return mapping.findForward("wrong");
		} else {
			AdminForm adminForm = (AdminForm) form;
			AdminService adminService = new AdminService();
			// 默认密码123456
			int back = adminService.updPWD(adminForm.getUserid(),
					"e10adc3949ba59abbe56e057f20f883e");
			if (back == 1) {
				request.setAttribute("message", "重置成功");
			}
			Admin admin = (Admin) session.getAttribute("admin");
			List<Admin> adminlist = adminService.getAllAdmin(admin.getUserid());
			request.setAttribute("admin", adminlist);
			return mapping.findForward("list");
		}

	}

	public ActionForward deladminbyid(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		if (session.getAttribute("admin") == null) {
			return mapping.findForward("wrong");
		} else {
			AdminForm adminForm = (AdminForm) form;
			AdminService adminService = new AdminService();
			boolean back = adminService.delAdminById(adminForm.getId());
			if (back = true) {
				request.setAttribute("message", "删除成功");
			}
			Admin admin = (Admin) session.getAttribute("admin");
			List<Admin> adminlist = adminService.getAllAdmin(admin.getUserid());
			request.setAttribute("admin", adminlist);
			return mapping.findForward("list");
		}

	}

	public ActionForward alterpwd(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		if (session.getAttribute("admin") == null) {
			return mapping.findForward("wrong");
		} else {
			OrderService orderService = new OrderService();
			int back = orderService.getOrderCount();
			request.setAttribute("count", back);
			return mapping.findForward("alterpwd");
		}
	}

	public void alteradminpwd(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		AdminForm adminForm = (AdminForm) form;
		MD5 md5 = new MD5();
		AdminService adminService = new AdminService();
		Admin admin = new Admin();
		admin = adminService.getAdminById(adminForm.getUserid());
		String dbpassword = admin.getPassword();
		String oldpassword = md5.GetMD5Code(adminForm.getOldpassword());
		String password = md5.GetMD5Code(adminForm.getPassword());
		int back = 0;
		PrintWriter out = response.getWriter();
		if (dbpassword.equals(oldpassword)) {
			back = adminService.updPWD(adminForm.getUserid(), password);
			if (back == 1) {
				out.print(back);
				out.flush();
				out.close();
			} else {
				back = 2;
				out.print(back);
				out.flush();
				out.close();
			}
		} else {
			out.print(back);
			out.flush();
			out.close();
		}

	}
}