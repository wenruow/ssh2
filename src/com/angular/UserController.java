package com.angular;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.angular.entity.User;
import com.angular.service.IUserManager;


@Controller
@RequestMapping("/user")
public class UserController {
	@Resource(name="userManager")
	private IUserManager userManager;
	
	
	@RequestMapping("/toSaveUser")
	public String toSaveUser(){
		return "/addUser";
	}
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public ModelAndView toIndex(){
		String result ="this is delUser------";
		return new ModelAndView("/static/000","result",result);
	}
	@RequestMapping(value="/details")
	public ModelAndView toDetails(HttpServletRequest request ){
		String id=request.getParameter("ID");
		System.out.println(id);
		String result ="this is details";
		return new ModelAndView("/details","id",id);
	}
	
	
	@RequestMapping("/saveUser")
	public String saveUser(User user){
		userManager.saveUser(user);
		return "/welcome";
	}

}
