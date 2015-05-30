package model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.*;

@Entity
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id; 
	
	@Column (nullable = false)
	private String firstName;

	@Column (nullable = false)
	private String lastName;

	@Temporal (TemporalType.DATE)
	private Date dateOfBirth;

	@Temporal (TemporalType.TIMESTAMP)
	private Date registrationDate;

	@OneToOne(cascade = {CascadeType.PERSIST, CascadeType.REMOVE})
	private Address address;

	@Column (nullable = false, unique = true)
	private String email;

	@Column (nullable = false)
	private String password;

	@OneToMany(mappedBy="customer", fetch = FetchType.EAGER)  
	private List<Order> orders;

	@Column(nullable=false)
	private String role;

	public Customer (String firstName, String lastName, Date dateOfBirth, Date registrationDate, Address address, 
			String email, String role) {

		this.firstName = firstName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.registrationDate = registrationDate;
		this.address = address;
		this.email = email;
		this.orders = new ArrayList<Order>();
		this.role = role;

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

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public Date getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", dateOfBirth=" + dateOfBirth
				+ ", registrationDate=" + registrationDate + ", address="
				+ address + ", email=" + email + ", orders=" + orders
				+ ", role=" + role + "]";
	}

	public boolean checkPassword(String password) {
		if(password.equals(this.password))
			return true;
		return false;
	}
	
	public void addOrder(Order order){
		this.orders.add(order);
	}
	
}
