package com.zhu.service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.HibernateSessionFactory;
import com.zhu.entity.Message;

public class MessageService {
	public List<Message> getMessage() {
		Session session = HibernateSessionFactory.getSession();
		session.clear();
		String sql = "select m.id,m.date,m.userid,m.content,h.spotname as spotid from message m left join hotspot h on m.spotid = h.id";
		List<Message> message = session.createSQLQuery(sql)
				.addEntity(Message.class).list();
		session.close();
		return message;
	}

	public int addMessage(Message message) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		session.save(message);
		session.flush();
		transaction.commit();
		session.close();
		return 1;
	}

	public List<Message> getLastMessage(String spotid) {
		Session session = HibernateSessionFactory.getSession();
		session.clear();
		StringBuffer hql = new StringBuffer();
		hql.append("from Message where spotid='" + spotid
				+ "'  order by date desc ");
		Query query = session.createQuery(hql.toString());
		query.setMaxResults(3);
		query.setFirstResult(0);
		List<Message> message = query.list();
		session.close();
		return message;
	}

	public List<Message> getMessageBySpotId(String spotid) {
		Session session = HibernateSessionFactory.getSession();
		session.clear();
		StringBuffer hql = new StringBuffer();
		hql.append("from Message where spotid='" + spotid
				+ "'  order by date desc ");
		Query query = session.createQuery(hql.toString());
		List<Message> message = query.list();
		session.close();
		return message;
	}

	public boolean delMessageById(String id) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("delete Message where id ='" + id
				+ "'");
		query.executeUpdate();
		session.flush();
		transaction.commit();
		session.close();
		return true;

	}

}
