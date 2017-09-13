package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Order;
import org.fkit.mapper.CartMapper;
import org.fkit.mapper.CollectMapper;
import org.fkit.mapper.OrderMapper;
import org.fkit.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("orderService")
public class OrderServiceImpl implements OrderService{
	@Autowired
	private OrderMapper orderMapper;

	@Override
	public void addOrder(Order order) {
		// TODO Auto-generated method stub
		orderMapper.addOrder(order);
	}

	@Override
	public List<Order> getAll(Integer user_id) {
		// TODO Auto-generated method stub
		return orderMapper.getAll(user_id);
	}

	@Override
	public void addChat(Order order) {
		// TODO Auto-generated method stub
		orderMapper.addChat(order);
	}
	@Override
	public void deleteOrderById(Integer id) {
		// TODO Auto-generated method stub
		orderMapper.deleteOrderById(id);
	}

}
