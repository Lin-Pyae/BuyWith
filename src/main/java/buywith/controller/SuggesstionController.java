package buywith.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



import buywith.persistant.dao.SuggesstionDAO;
import buywith.persistant.dto.SuggesstionResponseDTO;

@Controller
public class SuggesstionController {
	@Autowired
	private SuggesstionDAO dao;
	
	@RequestMapping(value="/addSuggesstion", method=RequestMethod.POST)
	public String AddSuggesstion(HttpServletRequest request) {
		int id = Integer.valueOf(request.getParameter("userId")) ;
		String review = request.getParameter("review");
		System.out.println("id :" + id);
		System.out.println("review :" + review);
		int i = dao.addSuggesstions(review,id);
		System.out.println("Success adding suggesstion" + i);
		return "user002";
	}
	
	@RequestMapping (value="/suu", method=RequestMethod.GET)
	public String Suu (ModelMap model) {
		
		ArrayList<SuggesstionResponseDTO> suu=dao.selectAllsugg();
		model.addAttribute("suu",suu);
		System.out.println("suu ");
		return "admin002";
		
	}

}
