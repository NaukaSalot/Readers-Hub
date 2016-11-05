package com.neu.readershub.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.neu.readershub.DAO.CategoryDAO;
import com.neu.readershub.Exception.BookException;
import com.neu.readershub.pojo.Books;
import com.neu.readershub.pojo.Category;




@Controller
@RequestMapping("/listbooks.htm")
public class ListBooksController {

	@RequestMapping(method=RequestMethod.GET)
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
        CategoryDAO categories = null;
        List categoryList = null;
        List booksList = new ArrayList();
	
        try {
            categories = new CategoryDAO();
            categoryList = categories.list();

            Iterator categIterator = categoryList.iterator();

            while (categIterator.hasNext())
            {
                Category category = (Category) categIterator.next();

                Iterator booksIterator = category.getBooks().iterator();

                while (booksIterator.hasNext())
                {
                    Books book = (Books) booksIterator.next();
                    System.out.println("******************---**************"+book.getCategory_name()+","+book.getBookName());
                    
                    booksList.add(book);
                }
            }
        } catch (BookException e) {
            System.out.println(e.getMessage());
        }
        
        ModelAndView mv = new ModelAndView("viewBooks", "books", booksList);
        return mv;
    }
}
