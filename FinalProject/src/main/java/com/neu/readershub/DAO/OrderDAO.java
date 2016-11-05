package com.neu.readershub.DAO;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;

import com.neu.readershub.pojo.Books;
import com.neu.readershub.pojo.Customer;
import com.neu.readershub.pojo.Order;

public class OrderDAO extends DAO {

	public void add(int personID, int bookID) {
		Order order=new Order();
		try{
			begin();
			Query q=getSession().createQuery("from Customer where personID=:personID");
			q.setInteger("personID",personID);
			
		
			
			Customer customer=(Customer) q.uniqueResult();
			System.out.println(personID+"Person Id");
			
			
			
			Query query=getSession().createQuery("from Books where bookID=:bookID");
			query.setLong("bookID",bookID);
			
			Books b=(Books) query.uniqueResult();
			System.out.println(bookID);
			
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            String orderDate = dateFormat.format(date);
			
          /*  Query qu=getSession().createQuery("from Order where date=:date");
			query.setDate("date",date);
			
			Order o=(Order) qu.uniqueResult();
			System.out.println(o);*/
            
			order.setBooks(b);
			order.setCustomer(customer);
			order.setDate(date);
			
			
			//getSession().update(js);
			//getSession().update(j);
			getSession().save(order);
			commit();
		//	System.out.println(ja.getStatus());
			
		}
		catch(Exception e){
			e.printStackTrace();
			rollback();
			
			
			
		}
		
	}
	

	public List<Order> getCustomer(int personID, int bookID) {
		Order order=new Order();// TODO Auto-generated method stub
		
		List<Order> customers=new ArrayList<Order>();
		
		
		try{
			begin();
			Query q=getSession().createQuery("from Books where bookID=:bookID");
			q.setLong("bookID",bookID);
			
			Books b=(Books) q.uniqueResult();
			
			Query qu=getSession().createQuery("from Order where books=:b");
			qu.setLong("b", bookID);
			
			customers=qu.list();
					
			commit();
			
		}
		catch(Exception e){
			rollback();
		}
		
		return customers;
	}
	
	public List<Order> retrieveOrder(int personID) {
		List<Order> order=new ArrayList<Order>();
		try{
			begin();
			Query q=getSession().createQuery("from Order where personID=:personID");
			q.setInteger("personID",personID);
			order= q.list();
			commit();
		}
		catch(Exception e){
			e.printStackTrace();
			rollback();
			
		}
		
		
		
		return order;
		// TODO Auto-generated method stub
		
	}
	/*
	public void checkout(int customerID, ArrayList<Books> cart){
		try {
            int orderId = 0;
        
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            String orderDate = dateFormat.format(date);
            Query query= getSession().createQuery("from Books where bookID = :bookID");
		
            Order order=new Order();
            order.setCustomer(customer)
            
	}
*/
	
}
