package com.marksbook.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="hsc")
public class HSC {
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="oriyaFM")
    private int oriyaFM;
	
	@Column(name="oriya")
    private int oriya;
	
	@Column(name="englishFM")
    private int englishFM;
	
	@Column(name="english")
    private int english;
	
	@Column(name="sanskritFM")
    private int sanskritFM;
	
	@Column(name="sanskrit")
    private int sanskrit;
	
	@Column(name="math1FM")
    private int math1FM;
	
	@Column(name="math1")
    private int math1;
	
	@Column(name="math2FM")
    private int math2FM;
	
	@Column(name="math2")
    private int math2;
	
	@Column(name="science1FM")
    private int science1FM;
	
	@Column(name="science1")
    private int science1;
	
	@Column(name="science2FM")
    private int science2FM;
	
	@Column(name="science2")
    private int science2;
	
	@Column(name="historyFM")
    private int historyFM;
	
	@Column(name="history")
    private int history;
	
	@Column(name="geographyFM")
    private int geographyFM;
	
	@Column(name="geography")
    private int geography;
	
	
    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getOriyaFM() {
		return oriyaFM;
	}

	public void setOriyaFM(int oriyaFM) {
		this.oriyaFM = oriyaFM;
	}

	public int getOriya() {
		return oriya;
	}

	public void setOriya(int oriya) {
		this.oriya = oriya;
	}

	public int getEnglishFM() {
		return englishFM;
	}

	public void setEnglishFM(int englishFM) {
		this.englishFM = englishFM;
	}

	public int getEnglish() {
		return english;
	}

	public void setEnglish(int english) {
		this.english = english;
	}

	public int getSanskritFM() {
		return sanskritFM;
	}

	public void setSanskritFM(int sanskritFM) {
		this.sanskritFM = sanskritFM;
	}

	public int getSanskrit() {
		return sanskrit;
	}

	public void setSanskrit(int sanskrit) {
		this.sanskrit = sanskrit;
	}

	public int getMath1FM() {
		return math1FM;
	}

	public void setMath1FM(int math1fm) {
		math1FM = math1fm;
	}

	public int getMath1() {
		return math1;
	}

	public void setMath1(int math1) {
		this.math1 = math1;
	}

	public int getMath2FM() {
		return math2FM;
	}

	public void setMath2FM(int math2fm) {
		math2FM = math2fm;
	}

	public int getMath2() {
		return math2;
	}

	public void setMath2(int math2) {
		this.math2 = math2;
	}

	public int getScience1FM() {
		return science1FM;
	}

	public void setScience1FM(int science1fm) {
		science1FM = science1fm;
	}

	public int getScience1() {
		return science1;
	}

	public void setScience1(int science1) {
		this.science1 = science1;
	}

	public int getScience2FM() {
		return science2FM;
	}

	public void setScience2FM(int science2fm) {
		science2FM = science2fm;
	}

	public int getScience2() {
		return science2;
	}

	public void setScience2(int science2) {
		this.science2 = science2;
	}

	public int getHistoryFM() {
		return historyFM;
	}

	public void setHistoryFM(int historyFM) {
		this.historyFM = historyFM;
	}

	public int getHistory() {
		return history;
	}

	public void setHistory(int history) {
		this.history = history;
	}

	public int getGeographyFM() {
		return geographyFM;
	}

	public void setGeographyFM(int geographyFM) {
		this.geographyFM = geographyFM;
	}

	public int getGeography() {
		return geography;
	}

	public void setGeography(int geography) {
		this.geography = geography;
	}

}