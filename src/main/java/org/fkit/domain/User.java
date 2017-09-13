package org.fkit.domain;

import java.io.Serializable;

public class User implements Serializable{
	private Integer user_id;			// id
	private String user_sex;		// 性别
	private String user_name;	// 用户名
	private String user_num;	// 登录名
	private String user_password;	// 密码
	private String user_phone;		// 电话
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public String getUser_sex() {
		return user_sex;
	}

	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_num() {
		return user_num;
	}

	public void setUser_num(String user_num) {
		this.user_num = user_num;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	@Override
	public String toString() {
		return "你的密码是："+user_password;
	}
}
