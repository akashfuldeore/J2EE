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
import com.cdac.dto.WithoutReturn;

@Repository
public class WithoutReturnDaoImple implements WithoutReturnDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Override
	public void insertWithoutReturn(WithoutReturn withoutReturn) {
		
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				
				Transaction tr = session.beginTransaction();
				session.save(withoutReturn);
				
				tr.commit();
				session.flush();
				session.close();
				
				return null;
			}
			
		});
	}

	@Override
	public List<WithoutReturn> selectBookings(int userId) {
		

		List<WithoutReturn> list = hibernateTemplate.execute(new HibernateCallback<List<WithoutReturn>>() {

			@Override
			public List<WithoutReturn> doInHibernate(Session session) throws HibernateException {
				
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from WithoutReturn where userId = ?");
				q.setInteger(0, userId);
				List<WithoutReturn> list1 = q.list();
				tr.commit();
				session.flush();
				session.close();
				
				return list1;
			}
		
		
		});
		
		return list;
	}

	@Override
	public WithoutReturn selectBooking(int bookingId) {
		
		WithoutReturn withoutReturn = hibernateTemplate.execute(new HibernateCallback<WithoutReturn>() {

			@Override
			public WithoutReturn doInHibernate(Session session) throws HibernateException {
				
				Transaction tr = session.beginTransaction();
				WithoutReturn withoutReturn = (WithoutReturn)session.get(WithoutReturn.class, bookingId);
				
				tr.commit();
				session.flush();
				session.close();
				
				return withoutReturn;
			}
		
		});
		
		return withoutReturn;
	}

	@Override
	public void updateBooking(WithoutReturn withoutReturnBooking) {
		
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				
				Transaction tr = session.beginTransaction();
				session.update(withoutReturnBooking);
				
				tr.commit();
				session.flush();
				session.close();
				
				return null;
			}
			
		});
	}

	@Override
	public void deleteBooking(int bookingId) {
		
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				
				Transaction tr  = session.beginTransaction();
				session.delete(new WithoutReturn(bookingId));
				tr.commit();
				session.flush();
				session.close();
				
				return null;
			}
			
		});
	}

}
