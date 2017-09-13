package org.fkit.domain;

import java.io.Serializable;

public class Manager implements Serializable{
	private Integer manager_id;			
	private String manager_name;	
	private String manager_num;	
	private String manager_password;
	public Manager() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getManager_id() {
		return manager_id;
	}
	public void setManager_id(Integer manager_id) {
		this.manager_id = manager_id;
	}
	public String getManager_name() {
		return manager_name;
	}
	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}
	public String getManager_num() {
		return manager_num;
	}
	public void setManager_num(String manager_num) {
		this.manager_num = manager_num;
	}
	public String getManager_password() {
		return manager_password;
	}
	public void setManager_password(String manager_password) {
		this.manager_password = manager_password;
	}
	@Override
	public String toString() {
		return "Manager[manager_id="+manager_id+"manager_num="+manager_num+"manager_password="+manager_password+"manager_name"+manager_name+"]";
	}
	
}