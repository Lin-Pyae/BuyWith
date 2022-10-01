package buywith.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

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
	public String TocheckOut() {		

		return "user008";
	}
	
	@RequestMapping(value="/checkout", method=RequestMethod.POST)
	public String Checkout(@RequestParam("userId") int userId, @RequestParam("allTotal") int alltotal,HttpServletRequest req, ModelMap map) {
		 String[] productName=req.getParameterValues("pName");
		 String[] price =req.getParameterValues("pPrice") ;
		 String[] quantity = req.getParameterValues("pq");
		 String[] productTotal = req.getParameterValues("ptotal");
		 String[] productId = req.getParameterValues("pId");
		 
		 CheckOutRequestDTO dto = new CheckOutRequestDTO();
		 dto.setUser_id(userId);
		 dto.setTotal_price(alltotal);
		 
		 int order_id = dao.insertintoOrder(dto);	
		 int length = price.length;
		 System.out.println(productId[0]);
		 for(int i=0; i<length; i++) {
			 dto.setProduct_id(productId[i]);
			 
			 dto.setOrder_id(order_id);
			 dto.setQuantity(Integer.valueOf(quantity[i]));
			 dto.setAll_price(Integer.valueOf(productTotal[i]));
			 dao.insertIntoOrderDetail(dto, order_id);
			 
		 }
		return "user002";
	}
	

}
