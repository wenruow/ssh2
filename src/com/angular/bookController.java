package com.angular;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.websocket.server.PathParam;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.angular.entity.User;
import com.angular.service.IUserManager;


@Controller
@RequestMapping("/book")
public class bookController {
	
	
	
	
	@RequestMapping(value="/search",method=RequestMethod.GET)
	public ModelAndView toIndex(){
		String result ="this is delUser------";
		return new ModelAndView("/static/000","result",result);
	}
	@RequestMapping(value="book/{bookID}")
	public ModelAndView toDetails(@PathVariable String bookID,HttpServletRequest request ){
//		String id=request.getParameter("ID");
		
		System.out.println(bookID);
		String result ="this is details";
		return new ModelAndView("/details","id",bookID);
	}
	
	
	

}