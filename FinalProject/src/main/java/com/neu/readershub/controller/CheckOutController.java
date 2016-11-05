package com.neu.readershub.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.neu.readershub.DAO.OrderDAO;
import com.neu.readershub.pojo.Books;
import com.neu.readershub.pojo.Customer;
import com.neu.readershub.pojo.Person;


@RequestMapping(value={"/checkout.htm"})
@Controller
public class CheckOutController {
	@RequestMapping(method=RequestMethod.GET)
	 public ModelAndView handleRequest(@ModelAttribute("person") Person person, HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
		
		OrderDAO orderDao=new OrderDAO();
		 HttpSession session = hsr.getSession();
	        String action = hsr.getParameter("action");
	        ModelAndView mv = new ModelAndView();
	        
	 if (action.equals("checkout")) {
		 System.out.println("=======*======");
		 if (session.getAttribute("buyer") != null) {
			 
			 System.out.println("==============");
         Customer cust = (Customer) session.getAttribute("buyer");
         ArrayList<Books> cart = (ArrayList<Books>) session.getAttribute("cart");
         //int total=0;
         for(Books b:cart){
        	 orderDao.add(cust.getPersonID(), b.getBookID());
        	 
         }
         
         //checkout(, cart);
         //mv.addObject("total", total);
        // System.out.println("/-----------------------********************---------------///////////"+total);
         session.removeAttribute("cart");
         mv.setViewName("checkout");
     }
     
  else {
         mv.setViewName("login");
       }
   }
		return mv;
		 
	 }
		
}

