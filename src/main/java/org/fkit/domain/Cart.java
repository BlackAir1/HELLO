package org.fkit.domain;

import java.io.Serializable;

public class Cart implements Serializable{
	private Integer cart_id;
	private Integer good_id;
	private Integer user_id;
	private String user_name;
	private String good_name;
	private Integer good_count;
	private float good_price;
	private float good_total;
	public Integer getCart_id() {
		return cart_id;
	}
	public void setCart_id(Integer cart_id) {
		this.cart_id = cart_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getGood_name() {
		return good_name;
	}
	public void setGood_name(String good_name) {
		this.good_name = good_name;
	}
	public Integer getGood_count() {
		return good_count;
	}
	public void setGood_count(Integer good_count) {
		this.good_count = good_count;
	}
	public float getGood_price() {
		return good_price;
	}
	public void setGood_price(float good_price) {
		this.good_price = good_price;
	}
	public float getGood_total() {
		return good_total;
	}
	public void setGood_total(float good_total) {
		this.good_total = good_total;
	}
	public Integer getGood_id() {
		return good_id;
	}
	public void setGood_id(Integer good_id) {
		this.good_id = good_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	
}
