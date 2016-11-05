package com.neu.readershub.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neu.readershub.DAO.OrderDAO;
import com.neu.readershub.pojo.Books;
import com.neu.readershub.pojo.Customer;
import com.neu.readershub.pojo.Order;
import com.neu.readershub.pojo.Person;

@RequestMapping(value={"/vieworder.htm"})
@Controller
public class ViewOrderController {
	@RequestMapping(method = RequestMethod.GET)
	protected String doSubmitAction(HttpServletRequest request,HttpServletResponse response) throws Exception {
		
		OrderDAO orderDao=new OrderDAO();
		HttpSession session=request.getSession();
			System.out.println("id--------+++++++++++++---------------------------------------------lkhjkhn");
			Customer cust = (Customer) session.getAttribute("name");
			System.out.println("id----*********-------------------------------------------------- "+cust.getPersonID());
		
		   System.out.println("id------------------------------------------------------ ");	
		   System.out.println("jgjjjjjjjjjjjjjj");	
	List orderList = orderDao.retrieveOrder(cust.getPersonID());
//	  System.out.println("111111111111111111");	
//	Iterator orderIterator = orderList.iterator();
//	  System.out.println("2222222222222222");	
//	while (orderIterator.hasNext())
//    {
//		  System.out.println("3333333333333");	
//        Order order = (Order) orderIterator.next();
//        System.out.println("************54556******---**************");
//        
//        orderList.add(order);
//    }
	session.setAttribute("orderList", orderList);
	return "viewOrders";
	}
}
