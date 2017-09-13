package org.fkit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.fkit.domain.Collect;
import org.fkit.service.CollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class CollectController {
	@Autowired
	@Qualifier("collectService")
	private CollectService collectService;
	
	
	
	@RequestMapping(value="/showCollect")
	public String showCart(@ModelAttribute Collect collect,Integer good_id,Integer user_id,Model m,HttpServletRequest request){
		Collect findCollect=collectService.findCollectById(good_id);
		if(findCollect!=null){
			m.addAttribute("collectFail", "不允许重复收藏");
		}else{
			collectService.insertCollect(collect);
		}
		
		List<Collect> collect_list=collectService.getCollect(user_id);
		m.addAttribute("collect_list", collect_list);
		return "collect";
	}
	@RequestMapping(value="/goCollect")
	public String collect(Integer user_id,Model m){
		List<Collect> collect_list=collectService.getCollect(user_id);
		m.addAttribute("collect_list", collect_list);
		return "collect";
	}
	@RequestMapping(value="/deleteCollect")
	public String deleteCollect(Integer good_id,Model m){
		collectService.deleteCollect(good_id);
		m.addAttribute("collectDeleteSuccess","收藏夹删除成功");
		return "collectDeleteSuccess";
	}
}
