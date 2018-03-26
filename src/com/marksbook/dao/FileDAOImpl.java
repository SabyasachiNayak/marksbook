package com.marksbook.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.marksbook.model.File;

@Repository
public class FileDAOImpl implements FileDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
       
	@Override
    public void save(File file) {
       sessionFactory.getCurrentSession().save(file);
    }
   
}
