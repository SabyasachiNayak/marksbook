package com.marksbook.dao;

import java.util.List;

import com.marksbook.model.HSC;

public interface HSCDAO
{   
    void saveMarks(HSC hscMarks);
    List<HSC> getMarks();
}
