package com.neu.readershub.pojo;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table
@PrimaryKeyJoinColumn(name="personID")
public class Customer extends Person{
	

	@OneToMany(fetch=FetchType.LAZY, mappedBy="customer")
	private Set<Order> orders=new HashSet<Order>();
	
	public Customer(){
		
		// TODO Auto-generated constructor stub
	}


	public Set<Order> getOrders() {
		return orders;
	}

	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}

}
