package com.dreamworth.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.dreamworth.entity.User;
import com.dreamworth.util.HibernateUtil;

@Repository
public class UserDAOImpl implements UserDAO {

	private SessionFactory factory;

	public SessionFactory getFactory() {
		return factory;
	}

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	public String addUser(User user) {
		factory = HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		session.save(user);
		Transaction tx = session.getTransaction();
		tx.commit();
		session.close();
		factory.close();
		return "Registration Successful";
	}

}
