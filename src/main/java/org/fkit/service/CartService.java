package org.fkit.service;

import java.util.List;

import org.fkit.domain.Cart;
import org.fkit.domain.Good;

public interface CartService {
	Cart findCartById(Integer good_id );
	void insertCart(Cart cart);
	void updateCart(Cart cart);
	List<Cart> getCart(Integer userid);
	void deleteCartById(Integer cart_id);
	void updateCount(Cart cart);
}
