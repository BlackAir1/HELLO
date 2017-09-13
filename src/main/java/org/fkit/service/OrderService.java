package org.fkit.service;

import java.util.List;

import org.fkit.domain.Order;

public interface OrderService {
	void addOrder(Order order);
	List<Order> getAll(Integer user_id);
	void addChat(Order order);
	void deleteOrderById(Integer id);
	
	
}
