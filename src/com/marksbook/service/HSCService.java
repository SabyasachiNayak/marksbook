package com.marksbook.service;

import java.util.List;

import com.marksbook.model.HSC;

public interface HSCService
{
	 void saveMarks(HSC hscMarks);
	 List<HSC> getMarks();
}
