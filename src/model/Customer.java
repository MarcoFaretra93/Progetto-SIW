package it.uniroma3.model;

import java.util.*;

import javax.persistence.*;

@Entity
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	@Column(nullable=false)
	private String firstName;
	@Column(nullable=false, unique=true)
	private String userName;
	@Column(nullable=false)
	private String password;

	@Column(nullable=false)
	private String lastName;
	@Column(nullable=false)
	private String email;
	@Column(nullable=false)
	@Temporal(TemporalType.DATE)
	private Date dateOfBirth;
	@Temporal(TemporalType.TIMESTAMP)
	private Date dateOfRegistration;
	private boolean admin;

	@OneToOne(cascade = {CascadeType.PERSIST, CascadeType.REMOVE})
	private Address address;

	@OneToMany(mappedBy="customer", fetch = FetchType.EAGER)
	private List<Order> orders;

	public Customer(){

	}

	public Customer(String firstName, String lastName, String userName, String password, String email, Date dateOfBirth, Date dateOfRegistration, Address address) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.userName=userName;
		this.password=password;
		this.email=email;
		this.dateOfBirth=dateOfBirth;
		this.dateOfRegistration=dateOfRegistration;
		this.orders=new ArrayList<Order>();


		this.address = address;
	}



	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public String getUserName() {
		return userName;
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

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public Date getDateOfRegistration() {
		return dateOfRegistration;
	}

	public void setDateOfRegistration(Date dateOfRegistration) {
		this.dateOfRegistration = dateOfRegistration;
	}




	public boolean isAdmin() {
		return admin;
	}

	public void setAdmin(boolean admin) {
		this.admin = admin;
	}

	@Override
	public String toString() {
		return "Customer [firstName=" + firstName + ", lastName=" + lastName
				+ ", email=" + email + ", dateOfBirth=" + dateOfBirth
				+ ", dateOfRegistration=" + dateOfRegistration + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((userName == null) ? 0 : userName.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Customer other = (Customer) obj;
		if (userName == null) {
			if (other.userName != null)
				return false;
		} else if (!userName.equals(other.userName))
			return false;
		return true;
	}





}