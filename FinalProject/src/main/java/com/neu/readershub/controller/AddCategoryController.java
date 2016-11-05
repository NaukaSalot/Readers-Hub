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

import com.neu.readershub.DAO.CategoryDAO;
import com.neu.readershub.Exception.BookException;
import com.neu.readershub.Validator.CategoryValidator;
import com.neu.readershub.pojo.Category;



//import com.yusuf.spring.controller.CategoryValidator;

@Controller
@RequestMapping("/addcategory.htm")
public class AddCategoryController {
	
	@Autowired
	@Qualifier("categoryValidator")
	CategoryValidator categoryValidator;
	
	@InitBinder
	private void initBinder(WebDataBinder binder)
	{
		binder.setValidator(categoryValidator);
	}
	
	@RequestMapping(method=RequestMethod.POST)
    protected String doSubmitAction(@ModelAttribute("category")Category category,BindingResult result) throws Exception
    {
		categoryValidator.validate(category, result);
		if(result.hasErrors())
		{
			return "addCategoryForm";
		}
		
		 try
	        {
	            CategoryDAO categoryDAO = new CategoryDAO();
	            if(categoryDAO.exists(category.getCategoryName()))
				{
					return "error";
				}
	            
	            categoryDAO.create(category.getCategoryName());
	            //DAO.close();
	        }
	        catch (BookException e)
	        {
	            System.out.println(e.getMessage());
	        }
	        return "addedCategory";
	    }
	@RequestMapping(method=RequestMethod.GET)
    public String initializeForm(@ModelAttribute("category")Category category, BindingResult result) { 
   
        return "addCategoryForm"; 
    } 

}
