package org.fkit.domain;

import java.io.Serializable;

public class Good implements Serializable{
	private Integer id;
	private Integer good_id;			
	private String good_name;		
	private float good_price;	
	private String good_image;	
	private String good_image1;
	private String good_introduce;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getGood_id() {
		return good_id;
	}
	public void setGood_id(Integer good_id) {
		this.good_id = good_id;
	}
	public String getGood_name() {
		return good_name;
	}
	public void setGood_name(String good_name) {
		this.good_name = good_name;
	}
	public float getGood_price() {
		return good_price;
	}
	public void setGood_price(float good_price) {
		this.good_price = good_price;
	}
	public String getGood_image() {
		return good_image;
	}
	public void setGood_image(String good_image) {
		this.good_image = good_image;
	}
	public String getGood_introduce() {
		return good_introduce;
	}
	public void setGood_introduce(String good_introduce) {
		this.good_introduce = good_introduce;
	}
	public String getGood_image1() {
		return good_image1;
	}
	public void setGood_image1(String good_image1) {
		this.good_image1 = good_image1;
	}

	
}
