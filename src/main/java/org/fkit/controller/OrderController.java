package org.fkit.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.fkit.domain.Order;

import org.fkit.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class OrderController {
	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;
	@RequestMapping(value="/addOrder")
	public String addOrder(@ModelAttribute Order order,Model m,Integer user_id){
		orderService.addOrder(order);
		List<Order> list_order=orderService.getAll(user_id);
		m.addAttribute("list_order",list_order);
		m.addAttribute("insertSuccess", "生成订单成功");
		return "insertOrderSuccess";
	}
	@RequestMapping(value="/insertOrder")
	public String seeOrder(@ModelAttribute Order order,Model m,Integer user_id){
		List<Order> list_order=orderService.getAll(user_id);
		m.addAttribute("list_order",list_order);
		
		return "insertOrder";
	}
	@RequestMapping(value="/addChat")
	public String addChat(Order order,Model m){

		
		orderService.addChat(order);
		m.addAttribute("chatSuccess", "评论成功");
		return "chatSuccess";
	}
	@RequestMapping(value="/deleteOrder")
	public String deleteCollect(Integer id,Model m){
		orderService.deleteOrderById(id);
		m.addAttribute("deleteOrderSuccess","删除成功");
		return "deleteOrderSuccess";
	}
}

