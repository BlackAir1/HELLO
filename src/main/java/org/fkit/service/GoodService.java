package org.fkit.service;

import java.util.List;

import org.fkit.domain.Good;



public interface GoodService {
	

	List<Good> getAll();
	void deleteGoodById(int good_id);
	void updateGood(Good good);
	Good selectGoodById(int good_id);
	//添加商品
	void addGood(Good good);
	Good selectGoodByName(String good_name);
	
}
