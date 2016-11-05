package com.neu.readershub.Validator;



import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.neu.readershub.pojo.Category;

import org.springframework.validation.ValidationUtils;

@Component
public class CategoryValidator implements Validator {

    public boolean supports(Class aClass)
    {
        return aClass.equals(Category.class);
    }

    public void validate(Object obj, Errors errors)
    {
        Category newCategory = (Category) obj;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "categoryName", "error.invalid.category", "Category Required");
    }
}
