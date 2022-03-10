package com.cdac.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.cdac.dto.User;

@Repository
public class UserDaoImple implements UserDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Override
	public void insert(User user) {
	
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				
				Transaction tr = session.beginTransaction();
				session.save(user);
				tr.commit();
				session.flush();
				session.close();
				
				return null;
			}
			
		});
	}

	@Override
	public boolean validate(User user) {
	
		boolean recv = hibernateTemplate.execute(new HibernateCallback<Boolean>() {

			@Override
			public Boolean doInHibernate(Session session) throws HibernateException {
				
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from User where mobNo = ? and password = ?");
				q.setString(0, user.getMobNo());
				q.setString(1, user.getPassword());
				
				List<User> list = q.list();
				boolean recv1 = !list.isEmpty();
				user.setUserId(list.get(0).getUserId());
				
				tr.commit();
				session.flush();
				session.close();
				
				return recv1;
			}
		
		});
		
		return recv;
	}

	@Override
	public boolean forgot(User user) {
		
		boolean recv = hibernateTemplate.execute(new HibernateCallback<Boolean>() {

			@Override
			public Boolean doInHibernate(Session session) throws HibernateException {
				
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("update User set password = ? where emailId = ? and mobNo = ?");
				q.setString(0, user.getPassword());
				q.setString(1, user.getEmailId());
				q.setString(2, user.getMobNo());
				
				int recv1 = q.executeUpdate();
				
				tr.commit();
				session.flush();
				session.close();
				
				if(recv1 == 1)
					return true;
				else
					return false;
			}
			
		});
		
		return recv;
	}

	@Override
	public void editProfile(User user) {
		
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				
				Transaction tr = session.beginTransaction();
				session.update(user);
				
				tr.commit();
				session.flush();
				session.close();
				
				return null;
			}
			
		});
		
	}

	@Override
	public User getUser(int userId) {
		
		 User user = hibernateTemplate.execute(new HibernateCallback<User>() {

				@Override
				public User doInHibernate(Session session) throws HibernateException {
					
					Transaction tr = session.beginTransaction();
					User user = (User)session.get(User.class, userId);
					
					tr.commit();
					session.flush();
					session.close();
					
					return user;
				}
			
			});
			
			return user;
	}

}
