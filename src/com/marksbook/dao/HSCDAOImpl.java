package com.marksbook.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.marksbook.model.HSC;

@Repository
public class HSCDAOImpl implements HSCDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
       
	@Override
    public void saveMarks(HSC hscMarks) {
       sessionFactory.getCurrentSession().save(hscMarks);
    }
    
	@Override
    public List<HSC> getMarks() {       
        String sqlQuery = "select * from hsc_marks order by fullmarks desc,subject";
        Query query = sessionFactory.getCurrentSession().createSQLQuery(sqlQuery).addEntity(HSC.class);
        List<HSC> hscMarksList = new ArrayList<>();
        List marksList = query.list();
        Iterator it = marksList.iterator();
        while(it.hasNext())  
        {
        	HSC hsc = (HSC)it.next();
        	hscMarksList.add(hsc);
        }
       return hscMarksList;
    }
}
