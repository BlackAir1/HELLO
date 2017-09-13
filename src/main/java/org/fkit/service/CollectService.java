package org.fkit.service;

import java.util.List;

import org.fkit.domain.Cart;
import org.fkit.domain.Collect;

public interface CollectService {
	Collect findCollectById(Integer good_id );
	void insertCollect(Collect collect);
	List<Collect> getCollect(Integer user_id);
	void deleteCollect(Integer good_id);
}
