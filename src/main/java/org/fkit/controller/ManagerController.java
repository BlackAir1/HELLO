package org.fkit.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;
import org.fkit.domain.Good;
import org.fkit.domain.Manager;
import org.fkit.service.GoodService;
import org.fkit.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;





@Controller
public class ManagerController {
	@Autowired
	@Qualifier("managerService")
	private ManagerService managerService;
	@Autowired
	@Qualifier("goodService")
	private GoodService goodService;
	
	@RequestMapping(value="/managerLogin")
	
	 public ModelAndView login(
			 String manager_num1,String manager_password1,
			 ModelAndView mv,
			 HttpSession session){	

		Manager manager = managerService.login(manager_num1, manager_password1);
		if(manager != null){	
			session.setAttribute("manager", manager);
			mv.setView(new RedirectView("./managerGood"));
		}else{
			mv.addObject("message", "登录名或密码错误，请重新输入!");
			mv.setViewName("managerLogin1");
		}
		return mv;

	}
	@RequestMapping(value="/managerGood")
	 public String managerGood(Model model){
		
		List<Good> good_list =goodService.getAll();
		
		model.addAttribute("good_list", good_list);
		
		return "managerGood";
	}
	@RequestMapping(value="/deleteGoods/{good_id}")
	public String deleteGoods(@PathVariable int good_id,Model m) {
		goodService.deleteGoodById(good_id);
		m.addAttribute("message", "删除成功");
		return "redirect:/managerGood";
	}
	@RequestMapping("/updateGood")
	public String updateGood(MultipartFile pictureFile,MultipartFile pictureFile1,Good good) throws IllegalStateException, IOException {
		//1. 获取图片完整名称
		String fileStr = pictureFile.getOriginalFilename();
		//2. 使用随机生成的字符串+源图片扩展名组成新的图片名称,防止图片重名
		String newfileName = UUID.randomUUID().toString() + fileStr.substring(fileStr.lastIndexOf("."));
		//3. 将图片保存到硬盘
		pictureFile.transferTo(new File("C:\\Users\\Administrator\\Desktop\\zuoye\\e-Commerce\\src\\main\\webapp\\img\\good\\all\\" + newfileName));
		//4.将图片名称保存到数据库
		good.setGood_image(newfileName);
		//1. 获取图片完整名称
				String fileStr1 = pictureFile1.getOriginalFilename();
				//2. 使用随机生成的字符串+源图片扩展名组成新的图片名称,防止图片重名
				String newfileName1 = UUID.randomUUID().toString() + fileStr1.substring(fileStr1.lastIndexOf("."));
				//3. 将图片保存到硬盘
				pictureFile1.transferTo(new File("C:\\Users\\Administrator\\Desktop\\zuoye\\e-Commerce\\src\\main\\webapp\\img\\good\\all\\" + newfileName1));
				//4.将图片名称保存到数据库
				good.setGood_image1(newfileName1);
		goodService.updateGood(good);
		return "redirect:/managerGood";
	}
	@RequestMapping("/goUpdateGoods/{good_id}")
	public String goUpdateGoods(@PathVariable int good_id,Model m) {
		Good good = goodService.selectGoodById(good_id);
		m.addAttribute("good", good);
		return "updateGood";
	}
	@RequestMapping("/addGoods")
	public String addGoods(MultipartFile picture ,MultipartFile picture1,Good good ,Model m) throws IllegalStateException, IOException{
		//1. 获取图片完整名称
		String fileStr = picture.getOriginalFilename();
		//2. 使用随机生成的字符串+源图片扩展名组成新的图片名称,防止图片重名
		String newfileName = UUID.randomUUID().toString() + fileStr.substring(fileStr.lastIndexOf("."));
		//3. 将图片保存到硬盘
		picture.transferTo(new File("C:\\Users\\Administrator\\Desktop\\zuoye\\e-Commerce\\src\\main\\webapp\\img\\good\\all\\" + newfileName));
		//4.将图片名称保存到数据库
		good.setGood_image(newfileName);
		
		//1. 获取图片完整名称
				String fileStr1 = picture1.getOriginalFilename();
				//2. 使用随机生成的字符串+源图片扩展名组成新的图片名称,防止图片重名
				String newfileName1 = UUID.randomUUID().toString() + fileStr1.substring(fileStr1.lastIndexOf("."));
				//3. 将图片保存到硬盘
				picture1.transferTo(new File("C:\\Users\\Administrator\\Desktop\\zuoye\\e-Commerce\\src\\main\\webapp\\img\\good\\all\\" + newfileName1));
				//4.将图片名称保存到数据库
				good.setGood_image1(newfileName1);
		
		goodService.addGood(good);
		m.addAttribute("addMessage", "添加成功！");
		return "redirect:/managerGood";
	}
}
