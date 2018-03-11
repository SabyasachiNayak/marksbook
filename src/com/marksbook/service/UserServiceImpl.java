package com.marksbook.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.marksbook.dao.UserDAO;
import com.marksbook.model.Login;
import com.marksbook.model.User;

@Service
public class UserServiceImpl implements UserService {
 
    @Autowired
    UserDAO userDAO;
 	
 	@Transactional
    @Override
    public long register(User user) {
       return userDAO.register(user);
    }
 	
 	@Transactional
    @Override
    public boolean isValidUser(Login login) {
       return userDAO.isValidUser(login);
    }
 	
 	@Transactional
    @Override
    public boolean emailExist(String email) {
       return userDAO.emailExist(email);
    }
 	
 	@Transactional
    @Override
    public int getIdByEmail(String email) {
       return userDAO.getIdByEmail(email);
    }
 	
 	@Transactional
    @Override
    public String getNameByEmail(String email) {
       return userDAO.getNameByEmail(email);
    }
}
