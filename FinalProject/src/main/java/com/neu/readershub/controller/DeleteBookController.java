package com.neu.readershub.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.neu.readershub.DAO.BooksDAO;
import com.neu.readershub.pojo.Books;


@RequestMapping(value={"/delete.htm"})
@Controller
public class DeleteBookController {
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView handleRequest(HttpServletRequest hsr, @RequestParam int id) throws Exception{
		
		HttpSession session=hsr.getSession();
		ModelAndView mv = new ModelAndView();
		String action=hsr.getParameter("action");
		if(action.equalsIgnoreCase("delete")){
			BooksDAO booksDao=new BooksDAO();
			Books b=booksDao.getBooksById(id);
			booksDao.delete(b);
		}
		mv.setViewName("deletedbook");
		return mv;
	}

}
