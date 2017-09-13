package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Cart;
import org.fkit.domain.Good;
import org.fkit.domain.User;
import org.fkit.mapper.CartMapper;
import org.fkit.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("cartService")
public class CartServiceImpl implements CartService{
	@Autowired
	private CartMapper cartMapper;
	

	@Override
	public void insertCart(Cart cart) {
		cartMapper.insertCart(cart);
	}
	@Override
	public List<Cart> getCart(Integer userid) {
		// TODO Auto-generated method stub
	
		
		return cartMapper.selectCartByUser(userid);
	}
	@Override
	public Cart findCartById(Integer good_id) {
		// TODO Auto-generated method stub
		return cartMapper.findCartById(good_id);
	}
	@Override
	public void updateCart(Cart cart) {
		// TODO Auto-generated method stub
		cartMapper.updateCart(cart);
	}
	@Override
	public void deleteCartById(Integer cart_id) {
		// TODO Auto-generated method stub
		cartMapper.deleteCartById(cart_id);
	}
	@Override
	public void updateCount(Cart cart) {
		// TODO Auto-generated method stub
		cartMapper.updateCount(cart);
	}

}
