package com.neu.readershub.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.neu.readershub.DAO.BooksDAO;
import com.neu.readershub.DAO.OrderDAO;
import com.neu.readershub.pojo.Books;
import com.neu.readershub.pojo.Customer;
import com.neu.readershub.pojo.Order;


@RequestMapping(value={"/addtocart.htm"})
@Controller
public class AddToCartController {
		@RequestMapping(method=RequestMethod.GET)
		 public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
         BooksDAO booksdao= new BooksDAO();
		  HttpSession session = hsr.getSession();
	        String action = hsr.getParameter("action");
	        ModelAndView mv = new ModelAndView();
		 
	        if (action.equals("addtocart")) {
	        	long total = 0;

	            ArrayList<Books> cart;
	            if (session.getAttribute("cart") != null) {
	            	cart = (ArrayList<Books>) session.getAttribute("cart");
	            } else {
	            	cart = new ArrayList<Books>();
	            }

	            int id = Integer.parseInt(hsr.getParameter("id"));
	           Books book = booksdao.getBooksById(id);
	            if (!cart.contains(book))
	            {
	            	cart.add(book);
	            	
	            }
	            for(Books b: cart){
	            	total=total+Long.parseLong(b.getBookPrice());
	            }
	            session.setAttribute("cart", cart);
	            mv.addObject("total", total);
	            mv.setViewName("cart");
	        }
	    
	      else  if(action.equals("cart"))
	       {
	    	   mv.setViewName("cart");
	       }
	           
		return mv;
	}
}
