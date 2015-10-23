///*
// * Generated by MyEclipse Struts
// * Template path: templates/java/JavaClass.vtl
// */
//package com.zhu.action;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.util.List;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.apache.struts.action.ActionForm;
//import org.apache.struts.action.ActionForward;
//import org.apache.struts.action.ActionMapping;
//import org.apache.struts.actions.DispatchAction;
//
//import com.zhu.entity.City;
//import com.zhu.form.CityForm;
//import com.zhu.service.CityService;
//import com.zhu.util.UUID;
//
///**
// * MyEclipse Struts Creation date: 04-18-2015
// * 
// * XDoclet definition:
// * 
// * @struts.action parameter="m" scope="request" validate="true"
// */
//public class CityInfoAction extends DispatchAction {
//	/*
//	 * Generated Methods
//	 */
//
//	/**
//	 * Method execute
//	 * 
//	 * @param mapping
//	 * @param form
//	 * @param request
//	 * @param response
//	 * @return ActionForward
//	 */
//	public ActionForward citylist(ActionMapping mapping, ActionForm form,
//			HttpServletRequest request, HttpServletResponse response) {
//		HttpSession session = request.getSession();
//		if (session.getAttribute("admin") == null) {
//			return mapping.findForward("wrong");
//		} else {
//			CityService cityService = new CityService();
//			List<City> citylist = cityService.getCity();
//			request.setAttribute("city", citylist);
//			return mapping.findForward("list");
//		}
//	}
//
//	public ActionForward addcity(ActionMapping mapping, ActionForm form,
//			HttpServletRequest request, HttpServletResponse response) {
//		HttpSession session = request.getSession();
//		if (session.getAttribute("admin") == null) {
//			return mapping.findForward("wrong");
//		} else {
//			return mapping.findForward("add");
//		}
//
//	}
//
//	public void addcityinfo(ActionMapping mapping, ActionForm form,
//			HttpServletRequest request, HttpServletResponse response)
//			throws IOException {
//		CityForm cityForm = (CityForm) form;
//		UUID uuid = new UUID();
//		CityService cityService = new CityService();
//		City city = new City();
//		city.setId(uuid.getUUID());
//		city.setProvince(cityForm.getProvince());
//		city.setNation(cityForm.getNation());
//		city.setCity(cityForm.getCity());
//		int back = cityService.addCity(city);
//		PrintWriter out = response.getWriter();
//		if (back == 1) {
//			out.print(back);
//			out.flush();
//			out.close();
//		} else {
//			back = 0;
//			out.print(back);
//			out.flush();
//			out.close();
//		}
//	}
//
//	public ActionForward updatecity(ActionMapping mapping, ActionForm form,
//			HttpServletRequest request, HttpServletResponse response) {
//		HttpSession session = request.getSession();
//		if (session.getAttribute("admin") == null) {
//			return mapping.findForward("wrong");
//		} else {
//			CityForm cityForm = (CityForm) form;
//			CityService cityService = new CityService();
//			City city = new City();
//			city = cityService.getCityById(cityForm.getId());
//			request.setAttribute("city", city);
//			return mapping.findForward("add");
//		}
//
//	}
//
//	public ActionForward updatecityinfo(ActionMapping mapping, ActionForm form,
//			HttpServletRequest request, HttpServletResponse response) {
//
//		CityForm cityForm = (CityForm) form;
//		CityService cityService = new CityService();
//		City city = new City();
//		city.setId(cityForm.getId());
//		city.setNation(cityForm.getNation());
//		city.setProvince(cityForm.getProvince());
//		city.setCity(cityForm.getCity());
//		cityService.updCity(city);
//		return mapping.findForward("list");
//
//	}
//
//	public ActionForward delcitybyid(ActionMapping mapping, ActionForm form,
//			HttpServletRequest request, HttpServletResponse response) {
//		HttpSession session = request.getSession();
//		if (session.getAttribute("admin") == null) {
//			return mapping.findForward("wrong");
//		} else {
//			CityForm cityForm = (CityForm) form;
//			CityService cityService = new CityService();
//			boolean back = cityService.delCityById(cityForm.getId());
//			if (back = true) {
//				request.setAttribute("message", "删除成功");
//			} else {
//				request.setAttribute("message", "删除失败");
//			}
//			List<City> citylist = cityService.getCity();
//			request.setAttribute("city", citylist);
//			return mapping.findForward("list");
//		}
//
//	}
// }