package com.neu.readershub.Validator;



import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.neu.readershub.pojo.Books;

import org.springframework.validation.ValidationUtils;

@Component
public class BooksValidator implements Validator {

    public boolean supports(Class aClass)
    {
        return aClass.equals(Books.class);
    }

    public void validate(Object obj, Errors errors)
    {
    	Books newbooks = (Books) obj;

      /* ValidationUtils.rejectIfEmptyOrWhitespace(errors, "bookName", "error.invalid.books", "Book Name Required");
       ValidationUtils.rejectIfEmptyOrWhitespace(errors, "bookPrice", "error.invalid.books", "Book Price Required");
       ValidationUtils.rejectIfEmptyOrWhitespace(errors, "bookDesc", "error.invalid.books", "Book Description Required");
       ValidationUtils.rejectIfEmptyOrWhitespace(errors, "rewards", "error.invalid.books", "Book Rewards Required");
       //ValidationUtils.rejectIfEmptyOrWhitespace(errors, "photo", "error.invalid.books", "Book Photo Required");
      */
    }
}
