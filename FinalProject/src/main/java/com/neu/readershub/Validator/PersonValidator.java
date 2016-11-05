package com.neu.readershub.Validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.neu.readershub.pojo.Customer;
import com.neu.readershub.pojo.Person;

import org.springframework.validation.ValidationUtils;

public class PersonValidator implements Validator {

    @Override
	public boolean supports(Class aClass)
    {
        return aClass.equals(Customer.class);
    }

    @Override
	public void validate(Object obj, Errors errors)
    {
        Customer person = (Customer) obj;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fname", "error.invalid.person", "First Name Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lname", "error.invalid.person", "Last Name Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "error.invalid.person", "Email Required");
        //ValidationUtils.rejectIfEmptyOrWhitespace(errors, "gender", "error.invalid.person", "Gender Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phn", "error.invalid.person", "Phone Number Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address.street", "error.invalid.address.street", "Street Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address.city", "error.invalid.address.city", "City Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address.state", "error.invalid.address.state", "State Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address.zipcode", "error.invalid.address.zipcode", "Zipcode Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName", "error.invalid.person.userName", "Username Required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "error.invalid.person.password", "Password Required");
   
    }
}
