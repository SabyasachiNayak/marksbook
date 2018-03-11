package com.marksbook.service;

import com.marksbook.model.Login;
import com.marksbook.model.User;

public interface UserService
{
    long register(User user);
    boolean isValidUser(Login login);
    boolean emailExist(String email);
    int getIdByEmail(String email);
    String getNameByEmail(String email);
}
