package com.neu.readershub.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neu.readershub.DAO.PersonDAO;
//import com.neu.readershub.Exception.BookException;
import com.neu.readershub.Validator.PersonValidator;
import com.neu.readershub.pojo.Customer;
//import com.neu.readershub.Validator.UserAccountValidator;
import com.neu.readershub.pojo.Person;
//import com.neu.readershub.pojo.UserAccount;

@Controller
@RequestMapping("/login.htm")
public class LoginController {
	/*@Autowired
	@Qualifier("personValidator")
	PersonValidator personValidator;

	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(personValidator);
	}*/
	
	@RequestMapping(method = RequestMethod.POST)
	protected String doSubmitAction(HttpServletRequest request,HttpServletResponse response, @ModelAttribute("person") Person person, BindingResult result) throws Exception {
		System.out.println("-------------1-------------");
		/*personValidator.validate(person, result);
		if (result.hasErrors()) {
			return "login";
		}*/

		try{
			HttpSession session=request.getSession();
			System.out.println("-------------2-------------");
			String userName=person.getUserName();
			String password=person.getPassword();
			String role=person.getRole();
			System.out.println("-------------3-------------");
			PersonDAO personDao = new PersonDAO();
			System.out.println("-------------4------------");
			Person p=personDao.get(userName,password);
			Customer cust=personDao.getCustomer(userName);
			session.setAttribute("name",cust);
			
			System.out.println("-------------5------------");
			if(userName.equals(p.getUserName()) && (password.equals(p.getPassword()))){
				
				if(p.getRole().equalsIgnoreCase("Buyer"))
				{
					 if (session.getAttribute("cart") == null) {
					session.setAttribute("buyer",cust );
					return "home1";}
					 else{
						 return "checkout";
					 }
					
				}
				
			
				
				else
				{
					return "adminpage";
				}
			}
			else
			
				return "error";
			
		}
		catch(Exception e)
		{
			System.out.println("Exception: " + e.getMessage());
		}
		return "usererror";
		}

	
	@RequestMapping(method = RequestMethod.GET)
	public String initializeForm(@ModelAttribute("person") Person person, BindingResult result,HttpServletRequest request, HttpServletResponse response) {
		HttpSession session=request.getSession();
		if(session.getAttribute("buyer")!=null){
			return "home1";
		}
		return "login";
	}
	}
