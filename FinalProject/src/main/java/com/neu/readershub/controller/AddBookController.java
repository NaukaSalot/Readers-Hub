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

import com.neu.readershub.DAO.BooksDAO;
import com.neu.readershub.DAO.CategoryDAO;
import com.neu.readershub.Exception.BookException;
import com.neu.readershub.Validator.BooksValidator;
import com.neu.readershub.pojo.Books;
import com.neu.readershub.pojo.Category;

@Controller
@RequestMapping("/addbooks.htm")
public class AddBookController {
	@Autowired
	@Qualifier("booksValidator")
	BooksValidator booksValidator;
	
	@InitBinder
	private void initBinder(WebDataBinder binder)
	{
		binder.setValidator(booksValidator);
	}

	@RequestMapping(method=RequestMethod.POST)
    protected String doSubmitAction(@ModelAttribute("books")Books books,BindingResult result) throws Exception{

		booksValidator.validate(books, result);
		if(result.hasErrors())
		{
			return "addBookForm";
		}
		
		String bookName= books.getBookName();
		String bookPrice=books.getBookPrice();
		String bookDesc=books.getBookDesc();
		int rewards=books.getRewards();
		String category_name=books.getCategory_name();
		
		try {
           
			CategoryDAO categories=new CategoryDAO();
            BooksDAO booklist=new BooksDAO();
            
           Category category = categories.get(category_name);	

           if(booklist.exists(bookName))
			{
				return "here";
			}
           
		Books bk=booklist.create(bookName, bookPrice, bookDesc, rewards, category.getCategoryID(),category.getCategoryName());
		
		category.addBooks(bk);
		categories.save(category);
		   } catch (BookException e) {
	            System.out.println(e.getMessage());
	        }
	        return "addedBooks";
	    }
	@RequestMapping(method=RequestMethod.GET)
    public String initializeForm(@ModelAttribute("books")Books books, BindingResult result) { 
   
        return "addBookForm"; 
    } 
}
