//package com.zhu.util;
//
//import java.io.IOException;
//
//import javax.servlet.Filter;
//import javax.servlet.FilterChain;
//import javax.servlet.FilterConfig;
//import javax.servlet.ServletException;
//import javax.servlet.ServletRequest;
//import javax.servlet.ServletResponse;
//
//import org.hibernate.SessionFactory;
//import org.hibernate.StaleObjectStateException;
//
//import com.HibernateSessionFactory;
//
//public class HibernateSessionFilter implements Filter {
//
//	private SessionFactory sf;
//
//	@Override
//	public void destroy() {
//		// TODO Auto-generated method stub
//
//	}
//
//	@Override
//	public void doFilter(ServletRequest request, ServletResponse response,
//			FilterChain chain) throws IOException, ServletException {
//		try {
//			// 开启Session和Transcation,在Hibernate查询中需要用getCurrentSession获取当前Session
//			sf.getCurrentSession().beginTransaction();
//			// 放行
//			chain.doFilter(request, response);
//			// Session提交，getCurrentSession获取的Session会在提交之后自动关闭
//			sf.getCurrentSession().getTransaction().commit();
//		} catch (StaleObjectStateException staleEx) {
//			throw staleEx;
//		} catch (Throwable ex) {
//			// Rollback only
//			ex.printStackTrace();
//			try {
//				// 如果Transcation依旧存在，回滚
//				if (sf.getCurrentSession().getTransaction().isActive()) {
//					sf.getCurrentSession().getTransaction().rollback();
//				}
//			} catch (Throwable rbEx) {
//				rbEx.printStackTrace();
//			}
//			// Let others handle it… maybe another interceptor for exceptions?
//			throw new ServletException(ex);
//
//		}
//
//	}
//
//	@Override
//	public void init(FilterConfig arg0) throws ServletException {
//		// sessionFactory, 可以通过自己的代码获取此值
//		sf = HibernateSessionFactory.sessionFactory;
//
//	}
//
// }
