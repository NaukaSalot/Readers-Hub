package com.neu.readershub.pojo;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Generated;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;



@Entity
public class Category {
	
	@Id
	@GeneratedValue
	@Column(name="CategoryID")
	private int categoryID;
	@Column(name="CategoryName")
	private String categoryName;
	
	@OneToMany(fetch=FetchType.LAZY)
	private Set<Books> books = new HashSet<Books>();
	
	
	public Category(String categoryName) {
		super();
		this.categoryName = categoryName;
		this.books = new HashSet<Books>();
	}


	public Category() {
	
		// TODO Auto-generated constructor stub
	}
	
	
	
	public Set<Books> getBooks() {
		return books;
	}


	public void setBooks(Set<Books> books) {
		this.books = books;
	}


	public int getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
    public void addBooks(Books books) {
        getBooks().add(books);
    }
	
	

}
