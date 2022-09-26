package buywith.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import buywith.model.ProductBean;
import buywith.persistant.dao.ProductDAO;
import buywith.persistant.dto.CategoryRequestDTO;
import buywith.persistant.dto.ProductRequestDTO;
import buywith.persistant.dto.ProductResponseDTO;


@Controller
public class ProductController {
	
	@Autowired
	private ProductDAO dao;
	
	
	
	@RequestMapping(value="/return/{product_id}", method=RequestMethod.GET)
	public String view(@PathVariable String product_id,ModelMap model) {
		ProductRequestDTO dto=new ProductRequestDTO();
		dto.setProduct_id(product_id);
		
		return "admin002";
	}
	
	
	
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
		dto.setSize(product.getSize());
		dto.setFlavour(product.getFlavour());
		dto.setTopping(product.getTopping());
		dto.setColor(product.getColor());
		dto.setDescirption(product.getDescirption());
		int i=dao.insertDataProducts(dto);
		if(i==0) {
			System.out.print("insert failed");
			model.addAttribute("error","Insert Failed");
		}
		
		return "admin005";
	}
	
	@RequestMapping (value="/seemore/{product_id}", method=RequestMethod.GET)
	public ModelAndView seemore(@PathVariable String product_id, ModelMap model) {
		
		ProductRequestDTO dto=new ProductRequestDTO();
		dto.setProduct_id(product_id);
		model.addAttribute("product_id",product_id);
		
		return new ModelAndView ("admin006","product",dao.selectOneProducts(dto));
	}
	
	
	@RequestMapping (value="/P4update/{product_id}", method=RequestMethod.GET)
	public ModelAndView P4admin(@PathVariable String product_id, ModelMap model) {
		
		ProductRequestDTO dto=new ProductRequestDTO();
		dto.setProduct_id(product_id);
		
		System.out.print("ay");
		return new ModelAndView ("admin007","product",dao.selectOneProducts(dto));
	}
	
	
	@RequestMapping (value="/P5update", method=RequestMethod.POST)
	public String P5update (@ModelAttribute("product") ProductBean product,ModelMap model ) {
		
		ProductRequestDTO dto= new ProductRequestDTO();
		dto.setProduct_id(product.getProduct_id());
		dto.setCategories_category_id(product.getCategories_category_id());
		dto.setProduct_name(product.getProduct_name());
		dto.setQuantity(product.getQuantity());
		dto.setImg1(product.getImg1());
		dto.setPrice(Double.valueOf(product.getPrice()));
		dto.setAdded_date(product.getAdded_date());
		dto.setSize(product.getSize());
		dto.setFlavour(product.getFlavour());
		dto.setTopping(product.getTopping());
		dto.setColor(product.getColor());
		dto.setDescirption(product.getDescirption());
		int i=dao.updateDataProducts(dto);
		System.out.println("id "+product.getProduct_id());
		System.out.println("Des "+product.getDescirption());
		if(i==0) {
			
		
			model.addAttribute("error","Update Failed");
		return "admin007";
		
		}
		return "admin002";
	}
	
	
		@RequestMapping (value="/Pdelete/{product_id}", method=RequestMethod.GET)
		public String Pdelete (@PathVariable String product_id,ModelMap model) {
			
			ProductRequestDTO dto= new ProductRequestDTO();
			dto.setProduct_id(product_id);
			int i=dao.deleteDataProducts(dto);
			if(i==0) {
				System.out.print("Failed Delete");
			}
			return "admin002";
		}
	
		
		@RequestMapping (value="/P10shop", method=RequestMethod.GET)
		public String ViewA10shop(ModelMap model) {
			
			
			ArrayList <ProductResponseDTO> bd=dao.selectAllProducts();
			model.addAttribute("bd", bd);
			System.out.print("Product");
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
		
		
		@RequestMapping(value="/productsearch", method=RequestMethod.GET)
		public String productsearch (@RequestParam("product_id") String product_id,@RequestParam("product_name") String product_name,@RequestParam("category_name") String category_name, ModelMap model) {
			System.out.print("cat");
			ProductRequestDTO pdto = new ProductRequestDTO();
			CategoryRequestDTO cdto = new CategoryRequestDTO();
			pdto.setProduct_id(product_id);
			pdto.setProduct_name(product_name);
			cdto.setCategory_name(category_name);
			ArrayList<ProductResponseDTO> list = dao.productSearch(pdto, cdto);
			model.addAttribute("list", list);
			return "admin002";
		}

	
	
	
	
	
	
}
