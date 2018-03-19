package com.marksbook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.marksbook.dao.HSCDAO;
import com.marksbook.model.HSC;

@Service
public class HSCServiceImpl implements HSCService {
 
    @Autowired
    HSCDAO hscDAO;
 	
 	@Transactional
    @Override
    public void saveMarks(HSC hscMarks) {
       hscDAO.saveMarks(hscMarks);
    }
 	
 	@Transactional
    @Override
    public List<HSC> getMarks() {
       return hscDAO.getMarks();
    }
}
