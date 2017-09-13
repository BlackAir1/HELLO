package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Good;
import org.fkit.mapper.GoodMapper;
import org.fkit.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("goodService")
public class GoodServiceImpl implements GoodService {
	@Autowired
	private GoodMapper goodMapper;


	@Transactional(readOnly=true)
	@Override
	public List<Good> getAll() {
		
		return goodMapper.findAll();
	}


	@Override
	public void deleteGoodById(int good_id) {
		goodMapper.deleteGoodById(good_id);
	}


	@Override
	public void updateGood(Good good) {
		goodMapper.updateGood(good);
	}


	@Override
	public Good selectGoodById(int good_id) {
		return goodMapper.selectGoodById(good_id);
	}

	//添加商品
	@Override
	public void addGood(Good good) {
		goodMapper.addGood(good);
	}


	@Override
	public Good selectGoodByName(String good_name) {
		// TODO Auto-generated method stub
		return goodMapper.selectGoodByName(good_name);
	}

	
	
	
}
