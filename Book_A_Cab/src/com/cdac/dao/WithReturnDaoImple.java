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

import com.cdac.dto.WithReturn;
import com.cdac.dto.WithoutReturn;

@Repository
public class WithReturnDaoImple implements WithReturnDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Override
	public void insertWithReturn(WithReturn withReturn) {
	
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				
				Transaction tr = session.beginTransaction();
				session.save(withReturn);
				
				tr.commit();
				session.flush();
				session.close();
				
				return null;
			}
			
		});
	}
	
	@Override
	public WithReturn selectBooking(int bookingId) {
		
		WithReturn withReturn = hibernateTemplate.execute(new HibernateCallback<WithReturn>() {

			@Override
			public WithReturn doInHibernate(Session session) throws HibernateException {
				
				Transaction tr = session.beginTransaction();
				WithReturn withReturn = (WithReturn)session.get(WithReturn.class, bookingId);
				
				tr.commit();
				session.flush();
				session.close();
				
				return withReturn;
			}
		
		});
		
		return withReturn;
	}

	@Override
	public List<WithReturn> selectBookings(int userId) {
		
		List<WithReturn> list = hibernateTemplate.execute(new HibernateCallback<List<WithReturn>>() {

			@Override
			public List<WithReturn> doInHibernate(Session session) throws HibernateException {
				
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from WithReturn where userId = ?");
				q.setInteger(0, userId);
				List<WithReturn> list1 = q.list();
				tr.commit();
				session.flush();
				session.close();
				
				return list1;
			}
		
		});
		
		return list;
	}
	
	@Override
	public void updateBooking(WithReturn withReturnBooking) {
		
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				
				Transaction tr = session.beginTransaction();
				session.update(withReturnBooking);
				
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
				session.delete(new WithReturn(bookingId));
				tr.commit();
				session.flush();
				session.close();
				
				return null;
			}
			
		});
	}


}
