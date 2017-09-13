package org.fkit.service;


import org.fkit.domain.User;


public interface UserService {
	

	User login(String user_num1,String user_password1);
	void insertUser(String user_sex,String user_name,String user_num,String user_password,String user_phone);
	void change(String user_num2,String user_password2,String user_newpwd);
	User findpwd(String user_num3,String user_name3,String user_phone3);
	User find(String user_phone3);
	
	User selectUserBy( String user_num,String user_phone );
}
