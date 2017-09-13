package org.fkit.controller;





import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.fkit.other.log4j;
import org.fkit.other.registervote; 
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.fkit.domain.User;
import org.fkit.mapper.UserMapper;
import org.fkit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

/**
 * 处理用户请求控制器
 * */
@Controller
public class UserController {
	
	/**
	 * 自动注入UserService
	 * */
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	

	@RequestMapping(value="/login")
	
	 public ModelAndView login(
			 String user_num1,String user_password1,
			 ModelAndView mv,
			 HttpSession session){	
 
		User user = userService.login(user_num1, user_password1);
		if(user != null){	
			session.setAttribute("user", user);
			mv.setView(new RedirectView("./index"));
		}else{
			mv.addObject("message", "登录名或密码错误，请重新输入!");
			mv.setViewName("login1");
		}
		return mv;
	}
	
	@RequestMapping("/regist")
	public String register(String user_sex,String user_secondpassword,String user_name,String user_num,String user_password,String user_phone,Model m){
		
				userService.insertUser(user_sex, user_name, user_num, user_password, user_phone);	
				m.addAttribute("success", "注册成功！");	
				return "login1";
		}
	@RequestMapping("/changepwd")
	public String change(
			 String user_num2,String user_password2,String user_newpwd,
			 Model m){	
			registervote vote = new registervote();
			boolean c=vote.VotePassword(user_newpwd);
			String x="change";
			User user = userService.login(user_num2, user_password2);
			if(user != null){
				if(c){
					userService.change(user_num2, user_password2, user_newpwd);
					x="login1";
					m.addAttribute("changeMessage", "修改成功！");
				}else{
					m.addAttribute("cpwdwrong", "新密码长度为6-10！");
				}
			} else{
				m.addAttribute("changeFail","账号密码不匹配，修改失败！");
			}
		return x;
	}
	@RequestMapping("/findpwd")
	public String find(String user_num3,String user_name3,String user_phone3,Model m)throws Exception {{
			User user = userService.findpwd(user_num3, user_name3,user_phone3);
			
			
			if(user!=null){
				User findpwd=userService.find(user_phone3);
				m.addAttribute("findpwd",findpwd);
					
					
			}else{
					log4j o=new log4j();
					m.addAttribute("findFail","账号姓名手机号不匹配，找回失败！");
					
			}
			return "find";
	}
	
	}
}