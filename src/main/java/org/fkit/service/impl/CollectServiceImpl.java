package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Collect;
import org.fkit.mapper.CollectMapper;
import org.fkit.service.CollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("collectService")
public class CollectServiceImpl implements CollectService{
	@Autowired
	private CollectMapper collectMapper;

	@Override
	public Collect findCollectById(Integer good_id) {
		// TODO Auto-generated method stub
		return collectMapper.findCollectById(good_id);
	}

	@Override
	public void insertCollect(Collect collect) {
		// TODO Auto-generated method stub
		collectMapper.insertCollect(collect);
	}

	@Override
	public List<Collect> getCollect(Integer user_id) {
		// TODO Auto-generated method stub
		return collectMapper.selectCollectByUser(user_id);
	}

	@Override
	public void deleteCollect(Integer good_id) {
		// TODO Auto-generated method stub
		collectMapper.deleteCollect(good_id);
	}

}
