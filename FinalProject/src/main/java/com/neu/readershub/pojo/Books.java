package com.neu.readershub.pojo;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;
@Entity
@Table(name="Books")
public class Books {

	@Id
	@GeneratedValue
	private int bookID;
	@Column(name="BookName")
	private String bookName;
	@Column(name="BookPrice")
	private String bookPrice;
	@Column(name="BookDescription")
	private String bookDesc;
/*	@Column(name="PhotoName")
	private String photoName;*/
	@Column(name="Rewards")
	private int rewards;
	/*@Column(name="PhotoLink")
	private MultipartFile photo;
	*/
	@JoinColumn(name="CategoryName")
	private String category_name;
	
	 @JoinColumn(name="CategoryID") //check all columns and if pkjoincolum then only primary key columns in whole db
	 private long categoryid;
	
	/*@ManyToOne
	private Customer customer;
	
	@ManyToOne
	private Seller seller;
	*/
	
	 @OneToMany(mappedBy="books")
		private Set<Order> order=new HashSet<Order>();
		
	 
	
  public Books(String bookName, String bookPrice, String bookDesc, int rewards, String category_name, long categoryid ) {
		super();
		this.bookName = bookName;
		this.bookPrice = bookPrice;
		this.bookDesc = bookDesc;
		//this.photoName = photoName;
		this.rewards = rewards;
		this.category_name=category_name;
		this.categoryid=categoryid;
	/*	this.category = category;
		this.customer = customer;
		this.seller = seller;*/
	}



	public Books() {
	
	// TODO Auto-generated constructor stub
}



	public Set<Order> getOrder() {
		return order;
	}



	public void setOrder(Set<Order> order) {
		this.order = order;
	}



	public int getBookID() {
		return bookID;
	}
	public void setBookID(int bookID) {
		this.bookID = bookID;
	}
	public String getBookName() {
		return bookName;
	}
	
	
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	/*public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}*/
	public String getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(String bookPrice) {
		this.bookPrice = bookPrice;
	}
	public String getBookDesc() {
		return bookDesc;
	}
	public void setBookDesc(String bookDesc) {
		this.bookDesc = bookDesc;
	}
	public int getRewards() {
		return rewards;
	}
	public void setRewards(int rewards) {
		this.rewards = rewards;
	}
	/*public MultipartFile getPhoto() {
		return photo;
	}
	public void setPhoto(MultipartFile photo) {
		this.photo = photo;
	}*/



	public String getCategory_name() {
		return category_name;
	}



	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}



	public long getCategoryid() {
		return categoryid;
	}



	public void setCategoryid(long categoryid) {
		this.categoryid = categoryid;
	}
	
	
}
