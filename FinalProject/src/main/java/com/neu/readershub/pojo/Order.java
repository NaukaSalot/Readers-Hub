package com.neu.readershub.pojo;

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="OrderDetails")
public class Order {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="orderID",unique=true,nullable=false)
	private int orderID;
	/*
	@Column(name="Quantity")
	private int qty;*/
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="bookID")
	private Books books;

	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="personID")
	private Customer customer;
	
	@Column(name="Date")
	private Date date;

/*
	
	public Order(int qty) {
		super();
		this.qty = qty;
	}
	*/
	
	
	
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}




	public Date getDate() {
		return date;
	}




	public void setDate(Date date) {
		this.date = date;
	}




	public int getOrderID() {
		return orderID;
	}




	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}




	/*public int getQty() {
		return qty;
	}




	public void setQty(int qty) {
		this.qty = qty;
	}*/




	public Books getBooks() {
		return books;
	}




	public void setBooks(Books books) {
		this.books = books;
	}




	public Customer getCustomer() {
		return customer;
	}




	public void setCustomer(Customer customer) {
		this.customer = customer;
	}




	


	

	
	
	
}
