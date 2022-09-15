package buywith.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import buywith.persistant.dto.AdminResponseDTO;
import buywith.model.ProductBean;
import buywith.persistant.dao.ProductDAO;
import buywith.persistant.dto.ProductRequestDTO;
import buywith.persistant.dto.ProductResponseDTO;


@Controller
public class ProductController {
	
	@Autowired
	private ProductDAO dao;
	
	
	@RequestMapping(value="/P1manage",method=RequestMethod.GET)
	public ModelAndView P1manage() {
		
		return new ModelAndView("admin005","product",new ProductBean());
	}

	@RequestMapping (value="/P2add", method=RequestMethod.POST)
	public String P2add (@ModelAttribute("product") ProductBean product,ModelMap model){
		
		System.out.print("rose");
		ProductRequestDTO dto= new ProductRequestDTO();
		//dto.setProduct_id(bean.getProduct_id());
		dto.setCategories_category_id(product.getCategories_category_id());
		dto.setProduct_name(product.getProduct_name());
		dto.setQuantity(product.getQuantity());
		dto.setImg1(product.getImg1());
		dto.setPrice(Double.valueOf(product.getPrice()));
		dto.setAdded_date(product.getAdded_date());
		dto.setUpate_date(product.getUpate_date());
		dto.setSize(product.getSize());
		dto.setFlavour(product.getFlavour());
		dto.setTopping(product.getTopping());
		dto.setColor(product.getColor());
		dto.setDescription(product.getDescription());
		int i=dao.insertDataProducts(dto);
		if(i==0) {
			System.out.print("insert failed");
			model.addAttribute("error","Insert Failed");
		}
		
		return "admin005";
	}
	
	//@RequestMapping (value="/P3edit", method=RequestMethod.GET)
	//public String P3edit(ModelMap model) {
		
		//ArrayList<ProductResponseDTO> list=dao.selectAllProducts();
		//model.addAttribute("list",list);
		
		//return "admin002";
	//}
	
	@RequestMapping (value="/P4admin", method=RequestMethod.GET)
	public ModelAndView P4admin(ModelMap model) {
		
		ArrayList<ProductResponseDTO> list= dao.selectAllProducts();
		model.addAttribute("list",list);
		
		return new ModelAndView ("ADMIN","product",new ProductBean());
	}
	
	@RequestMapping (value="/P5update", method=RequestMethod.POST)
	public String P5update (@ModelAttribute("product") ProductBean product,ModelMap model ) {
		
		ProductRequestDTO dto= new ProductRequestDTO();
		//dto.setProduct_id(bean.getProduct_id());
		dto.setCategories_category_id(product.getCategories_category_id());
		dto.setProduct_name(product.getProduct_name());
		dto.setQuantity(product.getQuantity());
		dto.setImg1(product.getImg1());
		dto.setPrice(Double.valueOf(product.getPrice()));
		dto.setAdded_date(product.getAdded_date());
		dto.setUpate_date(product.getUpate_date());
		dto.setSize(product.getSize());
		dto.setFlavour(product.getFlavour());
		dto.setTopping(product.getTopping());
		dto.setColor(product.getColor());
		dto.setDescription(product.getDescription());
		int i=dao.updateDataProducts(dto);
		if(i==0) {
		System.out.print("Update failed");
		}
		return "redirect:/P4admin";
	}
		
		@RequestMapping (value="A10shop", method=RequestMethod.GET)
		public String ViewA10shop(ModelMap model) {
			ArrayList<ProductResponseDTO> list=dao.selectAllProducts();
			model.addAttribute("list",list);
			
			return "user002";
		}
		
		@RequestMapping (value="/P6cup", method=RequestMethod.GET)
		public String P6cup(ModelMap model) {
			
			ArrayList<ProductResponseDTO> list=dao.selectAllProducts();
			model.addAttribute("list",list);
			return "user003";
			
		}
		
		@RequestMapping (value="/P7dessert", method=RequestMethod.GET)
		public String P7dessert(ModelMap model) {
			
			ArrayList<ProductResponseDTO> list=dao.selectAllProducts();
			model.addAttribute("list",list);
			return "user004";
			
		}
		
		@RequestMapping (value="/P8marcon", method=RequestMethod.GET)
		public String P8marcon(ModelMap model) {
			
			ArrayList<ProductResponseDTO> list=dao.selectAllProducts();
			model.addAttribute("list",list);
			return "user005";
			
		}
		
		@RequestMapping (value="/P9topper", method=RequestMethod.GET)
		public String P9topper(ModelMap model) {
			
			ArrayList<ProductResponseDTO> list=dao.selectAllProducts();
			model.addAttribute("list",list);
			return "user006";
			
		}
		
	
	
	
	
	
	
}
