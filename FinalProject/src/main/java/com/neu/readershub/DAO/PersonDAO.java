package com.neu.readershub.DAO;

import org.hibernate.HibernateException;
import org.hibernate.Query;

import com.neu.readershub.Exception.BookException;
import com.neu.readershub.pojo.Address;
import com.neu.readershub.pojo.Customer;
//import com.neu.readershub.pojo.Address;
import com.neu.readershub.pojo.Person;
//import com.neu.readershub.pojo.UserAccount;
//import com.neu.readershub.pojo.UserAccount;


public class PersonDAO extends DAO {

    public Person get(String username, String password) throws BookException
            {
        try {
            begin();
            Query q = getSession().createQuery("from Person where userName = :username and password = :password");
            q.setString("username", username);
            q.setString("password", password);
            Person person = (Person) q.uniqueResult();
            commit();
            if(person==null){
            	System.out.println("NO user");
            }
            System.out.println("Here");
            return person;
        } catch (HibernateException e) {
           rollback();
            throw new BookException("Could not get user " + username, e);
          // System.out.println(e);
        }
      //  return null;
    }
    
    public Person admin()
            throws BookException {
        try {
            begin();
            System.out.println("inside DAO");
            Query q = getSession().createQuery("from Person where userName = :username and password = :password");
            q.setString("username", "adminb");
            q.setString("password", "adminb");
            Person person = (Person) q.uniqueResult();
            if(person == null){
            person=new Person();
            
            Address addr=new Address();
            
            
            person.setRole("admin");
            person.setFname("adminb");
            person.setLname("lastadminb");
            person.setEmail("adminb@yahoo.com");
            person.setGender("female");
            person.setPhn("9879966481");
            person.setUserName("adminb");
            person.setPassword("adminb");
            
            
       /*     person.setUserAccount(userAccount);
            userAccount.setUserName(username);
            userAccount.setPassword(password);
            userAccount.setPerson(person);*/
             
            addr.setPerson(person);
            addr.setStreet("102 park drive");
            addr.setState("MA");
            addr.setCity("Boston");
            addr.setZipcode("89564");
            person.setAddress(addr);
           
            }
            getSession().save(person); //by doing this it will store fname, lname in person table, 
            //email in email table and uname password in user table
            
            commit();
            return person;
        } catch (HibernateException e) {
            rollback();
            //throw new AdException("Could not create user " + username, e);
            throw new BookException("Exception while creating user: " + e.getMessage());
        }
    }
    

    public void create(String role, String firstName, String lastName, String email, String gender,
    		String phoneNumber, String street,String city,String state,String zipcode, String usernName, String password)
            throws BookException {
        try {
            begin();
            System.out.println("inside DAO");
            if(role.equals("Buyer")){
            Customer customer=new Customer();
            //UserAccount userAccount=new UserAccount(username,password);
            Address addr=new Address(street, city, state, zipcode);
            
            customer.setRole(role);
            customer.setFname(firstName);
            customer.setLname(lastName);
            customer.setEmail(email);
            customer.setGender(gender);
            customer.setPhn(phoneNumber);
            customer.setUserName(usernName);
            customer.setPassword(password);
            
            
       /*     person.setUserAccount(userAccount);
            userAccount.setUserName(username);
            userAccount.setPassword(password);
            userAccount.setPerson(person);*/
             
            addr.setPerson(customer);
            addr.setStreet(street);
            addr.setState(state);
            addr.setCity(city);
            addr.setZipcode(zipcode);
            customer.setAddress(addr);
           
         
            getSession().save(customer); //by doing this it will store fname, lname in person table, 
            //email in email table and uname password in user table
            
            commit();
            /*return person;*/
        }
            } catch (HibernateException e) {
            rollback();
            //throw new AdException("Could not create user " + username, e);
            throw new BookException("Exception while creating user: " + e.getMessage());
        }
    }

    public Customer getCustomer(String userName)
            throws Exception {
    	try {
    		
            Query q = getSession().createQuery("from Customer where userName = :userName");
            //System.out.println("risssssssssssssss"+userName);
            q.setString("userName", userName);
          
            Customer userAccount = (Customer) q.uniqueResult();
            //System.out.println("USSSS"+userAccount.getUserName());
            if(userAccount==null){
            	System.out.println("no userrrr");
            }
            close();
            return userAccount;
    	} catch (HibernateException e) {
    		
            throw new Exception("Could not get user " + userName, e);
    	}	
    }
    
    public void delete(Person person)
            throws BookException {
        try {
            begin();
            getSession().delete(person);
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new BookException("Could not delete user " + person.getFname(), e);
        }
    }
    
    public boolean exists(String username,String email)
	{
		
		Query q=getSession().createQuery("from Person where username= :username or email= :email");
		q.setString("username", username);
		q.setString("email", email);
		q.list();
		if(q.iterate().hasNext())
		{
			return true;
		}
		return false;
		
	}
}