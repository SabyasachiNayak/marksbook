package com.marksbook.utility;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.encryption.InvalidPasswordException;
import org.apache.pdfbox.text.PDFTextStripper;

public class PDFParser {
	
	public static Map<String,Integer> readFromHSCPDF(String fileName) throws InvalidPasswordException, IOException
	{
		fileName = "C:\\Bunty\\Marksheet_HSC.pdf";
		File file = new File(fileName);
		PDDocument document = PDDocument.load(file);
		PDFTextStripper s = new PDFTextStripper();
		String content = s.getText(document);
		
		String pattern1 = "__";
		int ptrn1Index = content.indexOf(pattern1);
		String sub = content.substring(ptrn1Index+1, ptrn1Index+45);
		String[] subMarks= sub.split(" ");
		
		String pattern2 = "AE HE";
		int patrn2Index = content.indexOf(pattern2);
		String subStr = content.substring(patrn2Index+5, patrn2Index+18);
		String[] subStrMarks= subStr.split(" ");
		
		Map<String,Integer> marks = new HashMap<String,Integer>();
		marks.put("ORIYA(FLO)", Integer.parseInt(subMarks[1]));
		marks.put("ENGLISH(SLE)", Integer.parseInt(subMarks[3]));
		marks.put("SANSKRIT(TLS)", Integer.parseInt(subMarks[5]));
		marks.put("MATH PAP-1(MTA)", Integer.parseInt(subMarks[8]) - Integer.parseInt(subMarks[7]));
		marks.put("MATH PAP-2(MTG)", Integer.parseInt(subMarks[7]));
		marks.put("SCIENCE PAP-1(SCP)", Integer.parseInt(subMarks[11]) - Integer.parseInt(subMarks[10]));
		marks.put("SCIENCE PAP-2(SCL)", Integer.parseInt(subMarks[10]));
		marks.put("HISTORY(SSH)", Integer.parseInt(subStrMarks[1]));
		marks.put("GEOGRAPHY(SSG)", Integer.parseInt(subStrMarks[3]) - Integer.parseInt(subStrMarks[1]));
		
		return marks;
	 }
}
