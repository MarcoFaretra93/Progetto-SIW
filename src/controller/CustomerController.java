package controller;

import java.util.Date;
import java.util.ArrayList;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import model.Address;
import model.Customer;
import model.CustomerFacade;
import model.Order;

@ManagedBean(name="customerController")
public class CustomerController {
	
	@ManagedProperty(value="#{param.id}")
	private Long id;
	
	private Customer customer;
	private String firstName;
	private String lastName;
	private String password;
	private Date dateOfBirth;
	private Date registrationDate;
	private Address address;
	private String email;
	private ArrayList<Order> orders;
	private String role;
	
	@EJB
	private CustomerFacade customerFacade;
	
	private String findCustomer(){
		this.customer = customerFacade.findCustomer(this.id);
		return "customer";
	}
	private String login(){
		this.customer = customerFacade.login(firstName, lastName, password);
		return "customer";
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
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
	public ArrayList<Order> getOrders() {
		return orders;
	}
	public void setOrders(ArrayList<Order> orders) {
		this.orders = orders;
	}
	
	
	
}