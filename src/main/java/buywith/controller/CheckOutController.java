package buywith.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import buywith.model.CartItemsBean;
import buywith.model.CheckOutBean;
import buywith.persistant.dao.CheckOutDAO;
import buywith.persistant.dto.CheckOutRequestDTO;
import buywith.persistant.dto.CheckOutResponseDTO;


@Controller
public class CheckOutController {
	
	@Autowired
	private CheckOutDAO dao;
	
	
	@RequestMapping(value="/Oddisplay/{cart_id}", method=RequestMethod.GET)
	public ModelAndView display(@PathVariable int cart_id,ModelMap model) {
		
		CheckOutRequestDTO dto=new CheckOutRequestDTO();
		dto.setCart_id(cart_id);
		model.addAttribute("cart_id", cart_id);
		
		return new ModelAndView("user008","checkout",dao.selectOneCart(dto));
	}
	
	@RequestMapping (value="/Od1", method=RequestMethod.GET)
	public String Cdisplay(@PathVariable ModelMap model) {
		
		
		CheckOutRequestDTO dto=new CheckOutRequestDTO();
		dao.selectOneCart(dto);
		model.addAttribute("dto",dto);
		return "user008";
	}
	
	@RequestMapping (value="Cdisplay", method=RequestMethod.GET)
	public String Od2 () {
		
		
		
		return "user008";
	}
	
	@RequestMapping (value="/tocheckOut", method=RequestMethod.GET)
	public String checkOut() {		
//		CartItemsBean cb = new CartItemsBean();
//		cb.setProduct_name(name);
//		cb.setPrice(price);
//		cb.setQuantity(quantity);
//		cb.setTotal(total);
//
//		model.addAttribute("product",cb);
		return "user008";
	}
	

}
