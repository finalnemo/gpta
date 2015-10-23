package com.zhu.service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.HibernateSessionFactory;
import com.zhu.entity.Hotspot;

public class HotSpotService {
	public List<Hotspot> getHotSpot() {
		Session session = HibernateSessionFactory.getSession();
		session.clear();
		StringBuffer hql = new StringBuffer();
		hql.append("from Hotspot");
		Query query = session.createQuery(hql.toString());
		List<Hotspot> hotspot = query.list();
		session.close();
		return hotspot;
	}

	public Hotspot getHotspotById(String id) {
		Session session = HibernateSessionFactory.getSession();
		session.clear();
		Hotspot hotspot = null;
		StringBuffer hql = new StringBuffer();
		hql.append("from Hotspot where id='" + id + "'");
		Query query = session.createQuery(hql.toString());
		hotspot = (Hotspot) query.uniqueResult();
		return hotspot;

	}

	public int addHotSpot(Hotspot hotspot) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		session.save(hotspot);
		session.flush();
		transaction.commit();
		session.close();
		int back = 1;
		return back;
	}

	public void updHotspot(Hotspot hotspot) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		session.merge(hotspot);
		session.flush();
		transaction.commit();
		session.close();
	}

	public boolean delHotspotById(String id) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("delete Hotspot where id ='" + id
				+ "'");
		query.executeUpdate();
		session.flush();
		transaction.commit();
		session.close();
		return true;
	}

}
