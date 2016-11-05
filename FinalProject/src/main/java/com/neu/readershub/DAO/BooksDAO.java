package com.neu.readershub.DAO;



import org.hibernate.HibernateException;
import org.hibernate.Query;

import com.neu.readershub.Exception.BookException;
import com.neu.readershub.pojo.Books;


public class BooksDAO extends DAO {

    public Books create(String bookName, String bookPrice, String bookDesc, int rewards, long category_id,String categoryName)
            throws BookException {
        try {
            begin();
            Books books = new Books(bookName, bookPrice, bookDesc,rewards,categoryName,category_id);
            getSession().save(books);
            commit();
            return books;
        } catch (HibernateException e) {
            rollback();
            //throw new AdException("Could not create advert", e);
            throw new BookException("Exception while creating book: " + e.getMessage());
        }
    }

    public void update(int bookID, String bookName, String bookPrice, String bookDesc, int rewards)
            throws BookException {
        try {
            begin();
            
            Query query= getSession().createQuery("from Books where bookID =:bookID");
            query.setInteger("bookID", bookID);
            
            System.out.println("bookID"+bookID);
            
            Books b = (Books) query.uniqueResult();
            
           b.setBookName(bookName);
           b.setBookDesc(bookDesc);
           b.setBookPrice(bookPrice);
           b.setRewards(rewards);
           
           getSession().update(b);
           System.out.println("updated");
           commit();
           
        } catch (HibernateException e) {
            rollback();
            //throw new AdException("Could not create advert", e);
            throw new BookException("Exception while creating book: " + e.getMessage());
        }
    }
    
    
    public void delete(Books books)
            throws BookException {
        try {
            begin();
            System.out.println("delete");
            getSession().delete(books);
            System.out.println("delete111111");
            commit();
            System.out.println("delete11111189645");
        } catch (HibernateException e) {
            rollback();
            throw new BookException("Could not delete book", e);
        }
    }
    
    public Books getBooksById(int key1) {

		 Books books = null;
	        try {
	           
	        	 Query query= getSession().createQuery("from Books where bookID = :bookID");
	        	 query.setInteger("bookID", key1);
	        	 books= (Books) query.uniqueResult();
                return books;
    	        
	        }
	        catch(HibernateException e)
	        {
	            e.printStackTrace();
	        }
			return books;
	       
	    }
    
    public boolean exists(String bookName)
   	{
   		
   		Query q=getSession().createQuery("from Books where bookName= :bookName");
   		q.setString("bookName", bookName);
   		
   		q.list();
   		if(q.iterate().hasNext())
   		{
   			return true;
   		}
   		return false;
   		
   	}
    
}