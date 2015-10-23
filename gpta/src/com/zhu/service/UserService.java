package com.zhu.service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.HibernateSessionFactory;
import com.zhu.entity.User;

public class UserService {
	public User userLogin(String userId, String password) {
		User user = new User();
		Session session = HibernateSessionFactory.getSession();
		StringBuffer hql = new StringBuffer();
		hql.append("from User where userid = '" + userId + "'");
		hql.append(" and password = '" + password + "'");
		Query query = session.createQuery(hql.toString());
		user = (User) query.uniqueResult();
		return user;
	}

	public User getUserById(String id) {
		User user = new User();
		Session session = HibernateSessionFactory.getSession();
		StringBuffer hql = new StringBuffer();
		hql.append("from User where id = '" + id + "'");
		Query query = session.createQuery(hql.toString());
		user = (User) query.uniqueResult();
		return user;

	}

	public long getUserId(String userid) {
		Session session = HibernateSessionFactory.getSession();
		StringBuffer hql = new StringBuffer();
		hql.append("select count(*) from User where userid = '" + userid + "'");
		Query query = session.createQuery(hql.toString());
		long count = (Long) query.uniqueResult();
		return count;

	}

	public List<User> getUserList() {
		Session session = HibernateSessionFactory.getSession();
		String hql = "from User ";
		Query query = session.createQuery(hql);
		List<User> user = query.list();
		session.close();
		return user;
	}

	public List<User> getUserInfoById(String id) {
		Session session = HibernateSessionFactory.getSession();
		String hql = "from User where id = '" + id + "'";
		Query query = session.createQuery(hql);
		List<User> user = query.list();
		session.close();
		return user;
	}

	public void addUser(User user) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		session.save(user);
		transaction.commit();
		session.close();
	}

	public void updUserInfo(User user) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		session.merge(user);
		transaction.commit();
		session.close();
	}

	public int updPWD(String id, String password) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("update User set password = '"
				+ password + "' where id = '" + id + "'");
		query.executeUpdate();
		session.flush();
		transaction.commit();
		session.close();
		return 1;

	}
}
