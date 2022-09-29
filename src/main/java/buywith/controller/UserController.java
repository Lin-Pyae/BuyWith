package buywith.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import buywith.model.UserBean;
import buywith.persistant.dao.UserDAO;
import buywith.persistant.dto.UserRequestDTO;

@Controller
public class UserController {

	@Autowired
	private UserDAO dao;
	
	@RequestMapping(value="/tousersignup", method=RequestMethod.GET)
	public ModelAndView ToUserSignup() {
		return new ModelAndView ("user001", "user", new UserBean());
	}
	
	@RequestMapping(value="/userSignup", method=RequestMethod.POST)
	public String UserSignup(@ModelAttribute("user") UserBean user, ModelMap model) {
		UserRequestDTO dto = new UserRequestDTO();
		dto.setName(user.getUserName());
		dto.setEmail(user.getEmail());
		dto.setPhone_number(user.getPhone_number());
		dto.setStreet_name(user.getStreetName());
		dto.setTownship(user.getTownship());
		dto.setCity(user.getCity());
		dto.setZipcode(user.getZipCode());
		dto.setPassword(user.getPassword());
		dao.addUser(dto);
		System.out.println("User added");
		return "redirect:/A3login";
		
	}
	
	
	@RequestMapping(value="/userEdit", method=RequestMethod.GET)
	public ModelAndView UserEdit() {
		return new ModelAndView("user007", "editUser", new UserBean());
	}
	
	@RequestMapping(value="/Updateuser", method=RequestMethod.POST)
	public String updateUser(@ModelAttribute("user") UserBean user, ModelMap model) {
		UserRequestDTO dto = new UserRequestDTO();
		dto.setName(user.getUserName());
		dto.setEmail(user.getEmail());
		dto.setPhone_number(user.getPhone_number());
		dto.setStreet_name(user.getStreetName());
		dto.setTownship(user.getTownship());
		dto.setCity(user.getCity());
		dto.setZipcode(user.getZipCode());
		dto.setPassword(user.getPassword());
		dto.setAddress_id(user.getAddress_id());
		dto.setUser_id(user.getUser_id());
		dao.updateUser(dto);
		return "welcome001";
	}
}
