package com.zhu.service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.HibernateSessionFactory;
import com.zhu.entity.Admin;

public class AdminService {
	public long getUserId(String userid) {
		Session session = HibernateSessionFactory.getSession();
		StringBuffer hql = new StringBuffer();
		hql.append("select count(*) from Admin where userid = '" + userid + "'");
		Query query = session.createQuery(hql.toString());
		long count = (Long) query.uniqueResult();
		return count;
	}

	public Admin getAdminById(String userid) {
		Admin admin = null;
		Session session = HibernateSessionFactory.getSession();
		StringBuffer hql = new StringBuffer();
		hql.append("from Admin where userid = '" + userid + "'");
		Query query = session.createQuery(hql.toString());
		admin = (Admin) query.uniqueResult();
		return admin;
	}

	// 查询所有管理员信息，除去登录用户
	public List<Admin> getAllAdmin(String userid) {
		Session session = HibernateSessionFactory.getSession();
		StringBuffer hql = new StringBuffer();
		hql.append("from Admin where userid != '" + userid + "'");
		Query query = session.createQuery(hql.toString());
		List<Admin> admin = query.list();
		session.clear();
		session.close();
		return admin;
	}

	public int getWrongTimes(String userid) {
		Session session = HibernateSessionFactory.getSession();
		StringBuffer hql = new StringBuffer();
		hql.append("select wrongtimes from Admin where userid = '" + userid
				+ "'");
		Query query = session.createQuery(hql.toString());
		int count = (Integer) query.uniqueResult();
		return count;
	}

	public int getLockFlag(String userid) {
		Session session = HibernateSessionFactory.getSession();
		StringBuffer hql = new StringBuffer();
		hql.append("select lockflag from Admin where userid = '" + userid + "'");
		Query query = session.createQuery(hql.toString());
		int count = (Integer) query.uniqueResult();
		return count;
	}

	public Admin adminLogin(String userid, String password) {
		Admin admin = null;
		Session session = HibernateSessionFactory.getSession();
		StringBuffer hql = new StringBuffer();
		hql.append("from Admin where userid = '" + userid + "'");
		hql.append(" and password = '" + password + "'");
		Query query = session.createQuery(hql.toString());
		admin = (Admin) query.uniqueResult();
		return admin;
	}

	public void addAdmin(Admin admin) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		session.save(admin);
		session.flush();
		transaction.commit();
		session.close();
	}

	public void updWrongTimes(int wrongtimes, String userid) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("update Admin a set a.wrongtimes = '"
				+ wrongtimes + "' where userid = '" + userid + "'");
		query.executeUpdate();
		session.flush();
		transaction.commit();
		session.close();

	}

	public void updLockFlag(int lockflag, String userid) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("update Admin a set a.lockflag = '"
				+ lockflag + "' where userid = '" + userid + "'");
		query.executeUpdate();
		session.flush();
		transaction.commit();
		session.close();

	}

	public void updAdmin(Admin admin) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		session.merge(admin);
		transaction.commit();
		session.close();

	}

	public int updPWD(String userid, String password) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("update Admin a set a.password = '"
				+ password + "' where userid = '" + userid + "'");
		query.executeUpdate();
		session.flush();
		transaction.commit();
		session.close();
		return 1;

	}

	public boolean delAdminById(String id) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		Query query = session
				.createQuery("delete Admin where id ='" + id + "'");
		query.executeUpdate();
		session.flush();
		transaction.commit();
		session.close();
		return true;

	}

}
