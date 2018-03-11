package com.marksbook.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.marksbook.model.Login;
import com.marksbook.model.User;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
       
	@Override
    public long register(User engineer) {
       sessionFactory.getCurrentSession().save(engineer);
       return engineer.getId();
    }
    
    public boolean isValidUser(Login login) {  	
        String sqlQuery = "select * from login where email='" + login.getEmail() + "' and password='" + login.getPassword() + "'";
        Query query = sessionFactory.getCurrentSession().createSQLQuery(sqlQuery);
        List<User> users = query.list();
       return users.size() > 0 ? true : false;
    }
    
    @Override
    public boolean emailExist(String email) {
    	String sqlQuery = "select * from login where email='" + email + "'";
        Query query = sessionFactory.getCurrentSession().createSQLQuery(sqlQuery);
        List<String> emailList = query.list();
       return emailList.size() > 0 ? true : false;
    }
       
    @Override
    public int getIdByEmail(String email) {
    	String sqlQuery = "select id from login where email='" + email + "'";
        Query query = sessionFactory.getCurrentSession().createSQLQuery(sqlQuery);
        int id = (int)query.uniqueResult();
       return id;
    }
    
    @Override
    public String getNameByEmail(String email) {
    	String sqlQuery = "select name from login where email='" + email + "'";
        Query query = sessionFactory.getCurrentSession().createSQLQuery(sqlQuery);
        String name = (String)query.uniqueResult();
       return name;
    }
}
