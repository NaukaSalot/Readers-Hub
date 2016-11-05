package com.neu.readershub.controller;



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
import com.neu.readershub.Exception.BookException;
import com.neu.readershub.Validator.PersonValidator;
import com.neu.readershub.pojo.Customer;
import com.neu.readershub.pojo.Person;
//import com.neu.readershub.pojo.Address;	

	@Controller
	@RequestMapping("/register.htm")
	public class AddPersonController {
		@Autowired
		@Qualifier("personValidator")
		PersonValidator personValidator;

		@InitBinder
		private void initBinder(WebDataBinder binder) {
			binder.setValidator(personValidator);
		}

		@RequestMapping(method = RequestMethod.POST)
		protected String doSubmitAction(@ModelAttribute("customer") Customer customer, BindingResult result) throws Exception {
			personValidator.validate(customer, result);
			if (result.hasErrors()) {
				return "register";
			}

			try {
				System.out.print("test");
				PersonDAO personDao = new PersonDAO();
				System.out.print("test1");
				
				//personDao.create(firstName, lastName, email, gender, phoneNumber, address, username, password, street, city, state, zipcode)
				int personID=customer.getPersonID();	
				String username=customer.getUserName();
				String email=customer.getEmail();
		
					PersonDAO persondao=new PersonDAO();
					if(persondao.exists(username,email))
					{
						return "error1";
					}
				
				personDao.create(customer.getRole(),customer.getFname(), customer.getLname(),  
						customer.getEmail(), customer.getGender(), customer.getPhn(),
						customer.getAddress().getStreet(),customer.getAddress().getCity(),customer.getAddress().getState(),
						customer.getAddress().getZipcode(),customer.getUserName(),customer.getPassword());
				
				// DAO.close();
			} catch (BookException e) {
				System.out.println("Exception: " + e.getMessage());
			}
			
			return "addedUser";
			
		}
		
		@RequestMapping(method = RequestMethod.GET)
		public String initializeForm(@ModelAttribute("customer") Customer customer, BindingResult result) {

			return "register";
		}
	}
	//person.getUserAccount().getUserName(), person.getUserAccount().getPassword(),
	//person.getAddress().getStreet(),person.getAddress().getCity(), person.getAddress().getState(), person.getAddress().getZipcode()
