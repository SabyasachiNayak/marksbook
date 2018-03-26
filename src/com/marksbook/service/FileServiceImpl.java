package com.marksbook.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.marksbook.dao.FileDAO;
import com.marksbook.model.File;

@Service
public class FileServiceImpl implements FileService {
 
    @Autowired
    FileDAO fileDAO;
 	
 	@Transactional
    @Override
    public void save(File file) {
       fileDAO.save(file);
    }
}
