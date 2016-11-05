package com.neu.readershub.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
public class Address {

	@Id
	@GeneratedValue(generator="generator") // pk define
	@GenericGenerator(name="generator", strategy="foreign",
	parameters=@Parameter(name="property", value="person"))
	
	@Column(name="addressID")
	private int addressID;
	
	
	@Column(name="Street")
	private String street;
	@Column(name="City")
	private String city;
	@Column(name="State")
	private String state;
	@Column(name="ZipCode")
	private String zipcode;
	@OneToOne(fetch=FetchType.LAZY)
	@PrimaryKeyJoinColumn(name="addressID")
	private Person person;
	
	
	
	
	public Address() {
		
		// TODO Auto-generated constructor stub
	}

	public Address(String street, String city, String state, String zipcode) {
		super();
		this.street = street;
		this.city = city;
		this.state = state;
		this.zipcode = zipcode;
	}
	




	public Person getPerson() {
		return person;
	}


	public void setPerson(Person person) {
		this.person = person;
	}


	public int getAddressID() {
		return addressID;
	}


	public void setAddressID(int addressID) {
		this.addressID = addressID;
	}


	
	
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	
	
}
