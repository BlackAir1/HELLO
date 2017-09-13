package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.User;
import org.fkit.mapper.UserMapper;
import org.fkit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("userService")
public class UserServiceImpl implements UserService {
	

	@Autowired
	private UserMapper userMapper;


	@Transactional(readOnly=true)
	@Override
	public User login(String user_num1, String user_password1) {
		return userMapper.findWithLoginnameAndPassword(user_num1, user_password1);
	}

	@Override
	public void insertUser(String user_sex, String user_name, String user_num, String user_password, String user_phone) {
		// TODO Auto-generated method stub
		userMapper.registerWithLoginnameAndPassword(user_sex, user_name, user_num, user_password, user_phone);
		
	}



	@Override
	public User findpwd(String user_num3, String user_name3, String user_phone3) {
		// TODO Auto-generated method stub
		return userMapper.findWithLogin(user_num3, user_name3, user_phone3);
	}

	@Override
	public void change(String user_num2, String user_password2, String user_newpwd) {
		// TODO Auto-generated method stub
		userMapper.changeWithLoginnameAndPassword(user_num2, user_password2, user_newpwd);
	}

	@Override
	public User find(String user_phone3) {
		// TODO Auto-generated method stub
		return userMapper.findpwdwithphone(user_phone3);
	}

	@Override
	public User selectUserBy(String user_num, String user_phone) {
		// TODO Auto-generated method stub
		return userMapper.selectUserBy(user_num, user_phone);
	}

	

	

}
