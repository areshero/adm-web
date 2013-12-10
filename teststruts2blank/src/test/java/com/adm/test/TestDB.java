package com.adm.test;

import static org.junit.Assert.*;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.junit.Test;

import com.adm.data.model.User;

public class TestDB {

	@Test
	public void test() {
		Configuration cfg = new Configuration().configure();

		// 在hibernate3中都是使用该种方法创建，但是在4中被禁用了

		// cfg.buildSessionFactory();

		ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(cfg.getProperties()).buildServiceRegistry();
		SessionFactory factory = cfg.buildSessionFactory(serviceRegistry);
		Session session = null;
		try {

			session = factory.openSession();

			// 开启事务

			session.beginTransaction();

			User u = new User();

			u.setPassword("123");

			u.setUsername("zhangsan");

			u.setId(111);
			session.save(u);

			// 提交事务

			session.getTransaction().commit();

		} catch (HibernateException e) {

			e.printStackTrace();

			if (session != null)

				session.getTransaction().rollback();

		} finally {

			if (session != null)
				session.close();

		}
	}

}
