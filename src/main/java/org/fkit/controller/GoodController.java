package org.fkit.controller;


import java.util.List;
import org.fkit.domain.Good;
import org.fkit.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
@Controller
public class GoodController {
	@Autowired
	@Qualifier("goodService")
	private GoodService goodService;

	@RequestMapping(value="/showGoods")
	 public String managerGood(Model model){
		// 获得所有图书集合
		List<Good> good_list =goodService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("good_list", good_list);
		// 跳转到main页面
		
		return "showGood";
	}
	@RequestMapping(value="/goGoodPrice/{good_name}")
	 public String goGoodPrice(@PathVariable String good_name,Model m){
		Good good =goodService.selectGoodByName(good_name);
		m.addAttribute("good", good);
		return "goodPrice";		
	}
	
}
