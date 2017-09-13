package org.fkit.domain;

import java.io.Serializable;

public class Order implements Serializable{
	private Integer id;
	private Integer user_id;
	private String user_name;
	private String order_time;
	private String user_chat;
	private Integer grade;
	private String chat_picture;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
	public String getOrder_time() {
		return order_time;
	}
	public void setOrder_time(String order_time) {
		this.order_time = order_time;
	}
	public float getOrder_sum() {
		return order_sum;
	}
	public void setOrder_sum(float order_sum) {
		this.order_sum = order_sum;
	}
	public String getUser_chat() {
		return user_chat;
	}
	public void setUser_chat(String user_chat) {
		this.user_chat = user_chat;
	}
	public Integer getGrade() {
		return grade;
	}
	public void setGrade(Integer grade) {
		this.grade = grade;
	}
	public String getChat_picture() {
		return chat_picture;
	}
	public void setChat_picture(String chat_picture) {
		this.chat_picture = chat_picture;
	}
	private float order_sum;

	
}
