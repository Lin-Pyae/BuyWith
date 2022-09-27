package buywith.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import buywith.model.AdminBean;
import buywith.persistant.dao.AdminDAO;
import buywith.persistant.dto.AdminRequestDTO;
import buywith.persistant.dto.AdminResponseDTO;
import buywith.persistant.dto.ProductResponseDTO;

@Controller
public class AdminController {
	
	@Autowired
	private AdminDAO dao;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String ViewWelcome() {
		
		return "welcome001";
	}
	
	@RequestMapping (value="/A1signup", method=RequestMethod.GET)
	public ModelAndView Asignup() {
		
		
		return new ModelAndView ("admin001","admin", new AdminBean());
		
	}
	@RequestMapping (value="/A2signup", method=RequestMethod.POST)
	public String A2signup (@ModelAttribute("admin") AdminBean admin,ModelMap model) {
		
		System.out.println("Hi Nick");
		AdminRequestDTO dto=new AdminRequestDTO();
		dto.setAdmin_id(admin.getAdmin_id());
		dto.setName(admin.getName());;
		dto.setEmail(admin.getEmail());
		dto.setPassword(admin.getPassword());
		dao.insertDataAdmins(dto);
		
		return "admin002";
	}
	
	@RequestMapping (value="/A3login", method=RequestMethod.GET)
	public ModelAndView A3login() {
		
		return new ModelAndView ("login001","admin", new AdminBean());
	}
	
//	@RequestMapping (value="/A4login", method=RequestMethod.POST)
//	public String A4login(@ModelAttribute("admin") AdminBean admin,ModelMap model) {
//		
//	String admin_id= admin.getAdmin_id();
//		String password= admin.getPassword();
//		dao.selectAllAdmins();
//		ArrayList<AdminResponseDTO> res=dao.selectAllAdmins();
//		for(AdminResponseDTO x:res) {
//			System.out.println("Hello world");
//			if(x.getAdmin_id().equals(admin_id) && x.getPassword().equals(password)) {
//				return "admin002";
//				
//			}
//		}
//		
//		model.addAttribute("message","Please check your data again!");
//		return "login001";
//	}
	
	@RequestMapping (value="/A5logout", method=RequestMethod.GET)
	public String logout() {
		
		return "redirect:/";
	}
	
	//@RequestMapping (value="/A5welcome", method=RequestMethod.GET)
	//public String Viewwelcome2() {
		
    //return "Welcome";
	//}
	
	
	@RequestMapping (value="/A6profile", method=RequestMethod.GET)
	public ModelAndView A6profile(@ModelAttribute("admin") AdminBean admin,ModelMap model) {
	
		
		//List <AdminBean> a= new ArrayList<AdminBean>();
		ArrayList <AdminResponseDTO> list= dao.selectAllAdmins();
		model.addAttribute("list",list);

		return new ModelAndView ("admin003","admin",new AdminBean());	
		//return new ModelAndView ("admin003","admin",dao.selectOne(dto));
	}
	
	@RequestMapping(value="/A7update/{admin_id}", method=RequestMethod.GET)
	public ModelAndView A7update(@PathVariable String admin_id) {
		AdminRequestDTO dto=new AdminRequestDTO();
		dto.setAdmin_id(admin_id);
		return new ModelAndView ("admin003","admin",dao.selectOneAdmins(dto));
		
	}
	
	
	
	@RequestMapping (value="/A8update", method=RequestMethod.POST)
	public String A8update (@ModelAttribute("admin") AdminBean admin,ModelMap model) {
		
		
				AdminRequestDTO dto= new AdminRequestDTO();
				//dto.setAdmin_id(admin.getAdmin_id());
					dto.setAdmin_id(admin.getAdmin_id());
					dto.setName(admin.getName());
					dto.setEmail(admin.getEmail());
					dto.setPassword(admin.getPassword());		
			        int rs=dao.updateDataAdmins(dto);
			        if(rs==0) {
			        	model.addAttribute("error","Update Failed");
						return "admin003";
			       
			}
			        return ("admin002");
			
		}
			
			
	
	@RequestMapping (value="/A9aboutus", method=RequestMethod.GET)
	public String ViewA9setting() {
		
		return "setting001";
	}
	
	@RequestMapping (value="/A10help", method=RequestMethod.GET)
	public String ViewA10help() {
		
		return "setting002";
	}
	
	@RequestMapping (value="/A11q&a", method=RequestMethod.GET)
	public String ViewA11q() {
		
		return "setting003";
	}
	
	@RequestMapping (value="/A12setting", method=RequestMethod.GET)
	public String ViewA11setting() {
		
		return "setting004";
	}
	@RequestMapping (value="/A13admin", method=RequestMethod.GET)
	public String ViewA13admin() {
		
		return "admin002";
	}
	
	@RequestMapping (value="/Ashop", method=RequestMethod.GET)
	public String ViewAshop() {
		
		return "user002";
	}

	
	
	
	
	
}
