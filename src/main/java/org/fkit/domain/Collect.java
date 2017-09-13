package org.fkit.domain;

import java.io.Serializable;

public class Collect  implements Serializable{
	private Integer collect_id;
	private Integer user_id;
	private String user_name;
	private Integer good_id;
	private String good_name;
	private String good_introduce;
	private float good_price;
	public Integer getCollect_id() {
		return collect_id;
	}
	public void setCollect_id(Integer collect_id) {
		this.collect_id = collect_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
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
	public String getGood_introduce() {
		return good_introduce;
	}
	public void setGood_introduce(String good_introduce) {
		this.good_introduce = good_introduce;
	}
	public float getGood_price() {
		return good_price;
	}
	public void setGood_price(float good_price) {
		this.good_price = good_price;
	}

}
