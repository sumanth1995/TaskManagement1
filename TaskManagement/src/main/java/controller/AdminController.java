package controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import datasource.DataBaseCall;
import forms.User;

@Controller
public class AdminController {

	DataBaseCall dbCall;
	
	@RequestMapping("/loginScreen")
	public ModelAndView loginScreen(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName(".loginScreen");
		return mv;
	}
	
	@RequestMapping("/validateUser")
	public ModelAndView validateUser(@ModelAttribute("user") User user, HttpServletRequest request, HttpServletResponse response) throws SQLException{
		dbCall= new DataBaseCall();
		String userName= request.getParameter("userName");
		String password= request.getParameter("password");
		ModelAndView mv = new ModelAndView();
		if(dbCall.validateUser(userName, password))
			mv.setViewName(".home");
		else
			mv.setViewName(".loginScreen");
		return mv;
	}
	
}
