package com.neu.readershub.pojo;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Person")
@Inheritance(strategy=InheritanceType.JOINED)
public class Person { 
    

	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="personID",unique=true,nullable=false)
	private int personID;
	@Column(name="First_Name")
	private String fname;
	@Column(name="Last_Name")
	private String lname;
	@Column(name="Email", unique=true, nullable = false)
	private String email;
	@Column(name="Gender")
	private String gender;
	@Column(name="Phone_Number")
	private String phn;
	
	@Column(name="userName" , unique=true, nullable = false)
	private String userName;
	
	@Column(name="password" , unique=true, nullable = false)
	private String password;
	
	@Column(name="Role")
	private String role;
	
	
	@OneToOne(mappedBy="person", fetch=FetchType.LAZY, cascade=CascadeType.ALL)
	private Address address;
	
	/*@OneToOne(mappedBy="person", fetch=FetchType.LAZY, cascade=CascadeType.ALL)
	private UserAccount userAccount;*/
	
	
	

public Person(String fname, String lname, String email, String gender, String phn, String userName, String password, String role ) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.gender = gender;
		this.phn = phn;
		this.userName=userName;
		this.password=password;
		this.role=role;
	}



public Person(){
	
}



/*	public UserAccount getUserAccount() {
	return userAccount;
}



public void setUserAccount(UserAccount userAccount) {
	this.userAccount = userAccount;
}
*/


	public String getUserName() {
	return userName;
}



public String getRole() {
		return role;
	}



	public void setRole(String role) {
		this.role = role;
	}



public void setUserName(String userName) {
	this.userName = userName;
}



public String getPassword() {
	return password;
}



public void setPassword(String password) {
	this.password = password;
}



	public Address getAddress() {
	return address;
}



public void setAddress(Address address) {
	this.address = address;
}



	public int getPersonID() {
		return personID;
	}

	public void setPersonID(int personID) {
		this.personID = personID;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
	}
	public String getPhn() {
		return phn;
	}
	public void setPhn(String phn) {
		this.phn = phn;
	}

}
