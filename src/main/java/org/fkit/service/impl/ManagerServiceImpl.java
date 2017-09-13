package org.fkit.service.impl;


import org.fkit.domain.Manager;
import org.fkit.mapper.ManagerMapper;
import org.fkit.service.ManagerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("managerService")
public class ManagerServiceImpl implements ManagerService {
	

	@Autowired
	private ManagerMapper managerMapper;


	@Transactional(readOnly=true)
	@Override
	public Manager login(String manager_num1, String manager_password1) {
		return managerMapper.findWithLoginnameAndPassword(manager_num1, manager_password1);
	}
}
