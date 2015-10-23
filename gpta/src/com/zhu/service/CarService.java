package com.zhu.service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.HibernateSessionFactory;
import com.zhu.entity.Car;

public class CarService {
	public List<Car> getCar() {
		Session session = HibernateSessionFactory.getSession();
		StringBuffer hql = new StringBuffer();
		hql.append("from Car");
		Query query = session.createQuery(hql.toString());
		List<Car> car = query.list();
		session.close();
		return car;
	}

	public List<Car> getEmptyCar() {
		Session session = HibernateSessionFactory.getSession();
		session.clear();
		StringBuffer hql = new StringBuffer();
		hql.append("from Car where status = 0");
		Query query = session.createQuery(hql.toString());
		List<Car> car = query.list();
		session.close();
		return car;
	}

	public Car getCarByCarId(String carid) {
		Car car = new Car();
		Session session = HibernateSessionFactory.getSession();
		StringBuffer hql = new StringBuffer();
		hql.append("from Car where carid='" + carid + "'");
		Query query = session.createQuery(hql.toString());
		car = (Car) query.uniqueResult();
		return car;
	}

	public Car getCarById(String id) {
		Car car = new Car();
		Session session = HibernateSessionFactory.getSession();
		StringBuffer hql = new StringBuffer();
		hql.append("from Car where id='" + id + "'");
		Query query = session.createQuery(hql.toString());
		car = (Car) query.uniqueResult();
		return car;
	}

	public Car getCarByLicense(String license) {
		Car car = new Car();
		Session session = HibernateSessionFactory.getSession();
		StringBuffer hql = new StringBuffer();
		hql.append("from Car where license='" + license + "'");
		Query query = session.createQuery(hql.toString());
		car = (Car) query.uniqueResult();
		return car;
	}

	public int addCar(Car car) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		session.save(car);
		session.flush();
		transaction.commit();
		session.close();
		int back = 1;
		return back;
	}

	public void updCar(Car car) {
		Session session = HibernateSessionFactory.getSession();
		session.clear();
		Transaction transaction = session.beginTransaction();
		session.merge(car);
		session.flush();
		transaction.commit();
		session.close();
	}

	public boolean delCarById(String id) {
		Session session = HibernateSessionFactory.getSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("delete Car where id ='" + id + "'");
		query.executeUpdate();
		session.flush();
		transaction.commit();
		session.close();
		return true;

	}

}
