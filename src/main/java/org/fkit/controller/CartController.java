package org.fkit.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.fkit.domain.Cart;
import org.fkit.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CartController {
	@Autowired
	@Qualifier("cartService")
	private CartService cartService;
	
	@RequestMapping(value="/addCart")
	public String addCart(@ModelAttribute Cart cart,
			@RequestParam("good_id") Integer good_id,String good_name,Integer good_count,Integer user_id,
			HttpServletRequest request,Model m){
		
		
				Cart findCart=cartService.findCartById(good_id);
		if(findCart!=null){
						cartService.updateCart(cart);
		}else{		
						cartService.insertCart(cart);
		}
		List<Cart> cart_list=cartService.getCart(user_id);
		m.addAttribute("cart_list", cart_list);
		
		return "cart";
	}
	@RequestMapping(value="/cart")
	public String goCart(Integer user_id,Model m){
		List<Cart> cart_list=cartService.getCart(user_id);
		m.addAttribute("cart_list", cart_list);
		return "cart";
	}
	@RequestMapping(value="/deleteCart")
	public String deleteCart(Integer cart_id,Model m){
		cartService.deleteCartById(cart_id);
		m.addAttribute("deleteSuccess", "购物车删除成功");
		return "deleteSuccess";
	}
	@RequestMapping(value="/changeCart")
	public String changeCart(Cart cart,Model m){
		cartService.updateCount(cart);
		m.addAttribute("changeSuccess", "购物车修改成功");
		return "changeSuccess";
	}


}