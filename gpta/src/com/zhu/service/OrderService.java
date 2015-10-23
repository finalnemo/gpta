package com.zhu.service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.HibernateSessionFactory;
import com.zhu.entity.Orderinfo;

public class OrderService {
	public List<Orderinfo> getOrder() {
		Session session = HibernateSessionFactory.getSession();
		session.clear();
		String sql = "select o.id,o.userid,c.carid as carid,o.num,o.price,o.status,o.date,h.title as spotid,o.n1,o.n2,o.n3,o.n4,o.n5,o.n6,o.n7,o.n8,o.n9,o.n10,o.i1,o.i2,o.i3,o.i4,o.i5,o.i6,o.i7,o.i8,o.i9,o.i10 from orderinfo o "
				+ "left join hotspot h on o.spotid = h.id "
				+ "left join user u on o.userid = u.id "
				+ "left join car c on o.carid = c.id ";
		List<Orderinfo> order = session.createSQLQuery(sql)
				.addEntity(Orderinfo.class).list();
		session.close();
		return order;
	}

	public Orderinfo getOrderById(String id) {
		Session session = HibernateSessionFactory.getSession();
		session.clear();
		String sql = "select o.* from orderinfo o "
				+ "left join hotspot h on o.spotid = h.id "
				+ "left join user u on o.userid = u.id where o.id = '" + id
				+ "'";
		Orderinfo order = (Orderinfo) session.createSQLQuery(sql)
				.addEntity(Orderinfo.class).uniqueResult();
		return order;

	}

	public List<Orderinfo> getOrderByUserId(String userid) {
		Session session = HibernateSessionFactory.getSession();
		session.clear();
		String sql = "select o.id,o.userid,o.carid,o.num,o.price,o.status,o.date,h.title as spotid,o.n1,o.n2,o.n3,o.n4,o.n5,o.n6,o.n7,o.n8,o.n9,o.n10,o.i1,o.i2,o.i3,o.i4,o.i5,o.i6,o.i7,o.i8,o.i9,o.i10 from orderinfo o "
				+ "left join hotspot h on o.spotid = h.id "
				+ "left join user u on o.userid = u.id where o.userid = '"
				+ userid + "'";
		List<Orderinfo> orderinfo = session.createSQLQuery(sql)
				.addEntity(Orderinfo.class).list();
		session.close();
		return orderinfo;

	}

	public List<Orderinfo> getOrderBySpotId(String spotid) {
		Session session = HibernateSessionFactory.getSession();
		session.clear();
		String sql = "select o.* from orderinfo o where o.spotid='" + spotid
				+ "' and  status = 2";
		List<Orderinfo> orderinfo = session.createSQLQuery(sql)
				.addEntity(Orderinfo.class).list();
		session.close();
		return orderinfo;
	}

	public int getOrderCount() {
		Session session = HibernateSessionFactory.getSession();
		session.clear();
		String hql = "select count(*) from Orderinfo where status = 1";
		Query query = session.createQuery(hql);
		int back = ((Number) query.uniqueResult()).intValue();
		return back;
	}

	public List<Orderinfo> getOrderCarDetail(String carid) {
		Session session = HibernateSessionFactory.getSession();
		session.clear();
		String sql = "SELECT o.* FROM orderinfo o INNER JOIN CAR c on o.carid = c.id where c.id ='"
				+ carid + "' and o.status = 2";
		List<Orderinfo> orderinfo = session.createSQLQuery(sql)
				.addEntity(Orderinfo.class).list();
		session.close();
		return orderinfo;
	}

	public int addOrder(Orderinfo order) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		session.save(order);
		session.flush();
		transaction.commit();
		session.close();
		int back = 1;
		return back;
	}

	public void updOrder(Orderinfo order) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		session.merge(order);
		session.flush();
		transaction.commit();
		session.close();
	}

	public void updStatus(String id, int status) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("update Orderinfo set status = '"
				+ status + "' where id ='" + id + "'");
		query.executeUpdate();
		session.flush();
		session.getTransaction().commit();
		session.close();
	}

	public boolean delOrderById(String id) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("delete Orderinfo where id ='" + id
				+ "'");
		query.executeUpdate();
		session.flush();
		transaction.commit();
		session.close();
		return true;

	}

}
