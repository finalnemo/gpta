//package com.zhu.service;
//
//import java.util.List;
//
//import org.hibernate.Query;
//import org.hibernate.Session;
//import org.hibernate.Transaction;
//
//import com.HibernateSessionFactory;
//import com.zhu.entity.City;
//
//public class CityService {
//	public List<City> getCity() {
//		Session session = HibernateSessionFactory.getSession();
//		StringBuffer hql = new StringBuffer();
//		hql.append("from City");
//		Query query = session.createQuery(hql.toString());
//		List<City> city = query.list();
//		session.close();
//		return city;
//	}
//
//	public int addCity(City city) {
//		Session session = HibernateSessionFactory.getSession();
//		Transaction transaction = session.beginTransaction();
//		session.save(city);
//		transaction.commit();
//		session.close();
//		int back = 1;
//		return back;
//	}
//
//	public City getCityById(String id) {
//		City city = null;
//		Session session = HibernateSessionFactory.getSession();
//		StringBuffer hql = new StringBuffer();
//		hql.append("from City where id='" + id + "'");
//		Query query = session.createQuery(hql.toString());
//		city = (City) query.uniqueResult();
//		return city;
//
//	}
//
//	public void updCity(City city) {
//		Session session = HibernateSessionFactory.getSession();
//		Transaction transaction = session.beginTransaction();
//		session.merge(city);
//		transaction.commit();
//		session.close();
//	}
//
//	public boolean delCityById(String id) {
//		Session session = HibernateSessionFactory.getSession();
//		Transaction transaction = session.beginTransaction();
//		Query query = session.createQuery("delete City where id ='" + id + "'");
//		query.executeUpdate();
//		transaction.commit();
//		session.close();
//		return true;
//
//	}
//
// }
