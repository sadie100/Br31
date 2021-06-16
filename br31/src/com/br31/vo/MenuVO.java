package com.br31.vo;

public class MenuVO {
	String category, pname, eng_pname, intro,
	pfile, psfile, one_amount,	kcal;
	int monthly_rank, natrium, sugar, fat, protein, caffeine,
	set_check, order_num;
	String[] hashtag, allergy, rec_flavor;
	
	
	public int getOrder_num() {
		return order_num;
	}
	public void setOrder_num(int order_num) {
		this.order_num = order_num;
	}
	public String[] getRec_flavor() {
		return rec_flavor;
	}
	public void setRec_flavor(String[] rec_flavor) {
		this.rec_flavor = rec_flavor;
	}
	public String[] getHashtag() {
		return hashtag;
	}
	public String[] getAllergy() {
		return allergy;
	}
	public void setHashtag(String[] hashtag) {
		this.hashtag = hashtag;
	}
	public void setAllergy(String[] allergy) {
		this.allergy = allergy;
	}
	public int getMonthly_rank() {
		return monthly_rank;
	}
	public void setMonthly_rank(int monthly_rank) {
		this.monthly_rank = monthly_rank;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getEng_pname() {
		return eng_pname;
	}
	public void setEng_pname(String eng_pname) {
		this.eng_pname = eng_pname;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getPfile() {
		return pfile;
	}
	public void setPfile(String pfile) {
		this.pfile = pfile;
	}
	public String getPsfile() {
		return psfile;
	}
	public void setPsfile(String psfile) {
		this.psfile = psfile;
	}
	public String getOne_amount() {
		return one_amount;
	}
	public void setOne_amount(String one_amount) {
		this.one_amount = one_amount;
	}
	public String getKcal() {
		return kcal;
	}
	public void setKcal(String kcal) {
		this.kcal = kcal;
	}
	public int getNatrium() {
		return natrium;
	}
	public void setNatrium(int natrium) {
		this.natrium = natrium;
	}
	public int getSugar() {
		return sugar;
	}
	public void setSugar(int sugar) {
		this.sugar = sugar;
	}
	public int getFat() {
		return fat;
	}
	public void setFat(int fat) {
		this.fat = fat;
	}
	public int getProtein() {
		return protein;
	}
	public void setProtein(int protein) {
		this.protein = protein;
	}
	public int getCaffeine() {
		return caffeine;
	}
	public void setCaffeine(int caffeine) {
		this.caffeine = caffeine;
	}
	public int getSet_check() {
		return set_check;
	}
	public void setSet_check(int set_check) {
		this.set_check = set_check;
	}
	
	
}
