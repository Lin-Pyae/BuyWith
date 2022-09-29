package buywith.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.*;

import org.apache.tomcat.util.http.parser.Cookie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import buywith.model.AdminBean;
import buywith.persistant.dao.AdminDAO;
import buywith.persistant.dao.UserDAO;
import buywith.persistant.dto.AdminResponseDTO;
import buywith.persistant.dto.UserResponseDTO;


import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LoginController {

	@Autowired
	private AdminDAO adao;
	
	@Autowired
	private UserDAO udao;
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String Login(@ModelAttribute("admin")AdminBean bean, ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		String name = bean.getName();
		String password= bean.getPassword();
		ArrayList<AdminResponseDTO> Ares = adao.selectAllAdmins();
		ArrayList<UserResponseDTO> Ures= udao.selectAll();
		
		
		for(UserResponseDTO y:Ures) {
			System.out.println("user");
			if(y.getName().equals(name) && y.getPassword().equals(password)) {
				System.out.println(y.getUser_id());
				
				request.getSession().setAttribute("user", y);
				
				
				return "redirect:/A10shop";			
			}
		}
		
		for(AdminResponseDTO x:Ares) {
			System.out.println("admin");
			if(x.getName().equals(name)&& x.getPassword().equals(password)) {
				request.getSession().setAttribute("user", x);
				return "admin002";
			}
		
		}
		
		
		return "login001";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String Logout(HttpServletRequest request) {
		HttpSession session=request.getSession(false);
		session.invalidate();
		return "welcome001";
	}
	
	
	
}
