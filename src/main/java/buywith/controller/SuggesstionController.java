package buywith.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import buywith.persistant.dao.SuggesstionDAO;

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

}
