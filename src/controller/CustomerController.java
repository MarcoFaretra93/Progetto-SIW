import java.util.Date;
import java.util.List;

import it.uniroma3.model.Address;
import it.uniroma3.model.Customer;
import it.uniroma3.model.CustomerFacade;
import it.uniroma3.model.Order;

import javax.ejb.EJB;
import javax.ejb.EJBException;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean(name="customerController")
@SessionScoped
public class CustomerController {

	@EJB(beanName="cFacade")
	private CustomerFacade customerFacade;

	private Long id;

	private String firstName;
	private String userName;
	private String password;

	private String lastName;
	private String email;
	private Date dateOfBirth;
	private boolean admin;
	private Customer customer;
	private String street;
	private String city;
	private Address address;
	private String loginErr;
	private List<Order> orders;

	public String validate(){
		try {this.customer=customerFacade.validate(userName, password);}
		catch (EJBException e) {
			this.loginErr = "Wrong Username or password";
			return "login";
		}
		this.orders=this.customer.getOrders();
		return "customer";
	}

	public String createCustomer(){
		Date dateOfRegistration = new Date();
		this.customer=customerFacade.createCustomer(this.firstName, this.lastName, this.userName, this.password, this.email, this.dateOfBirth, dateOfRegistration, this.street, this.city);
		return "customer";
	}

	public String listOrders(){
		this.orders = this.customer.getOrders();
		return "listOrders";
	}

	public void addOrder(Order order){
		this.orders.add(order);
	}

	public CustomerFacade getCustomerFacade() {
		return customerFacade;
	}

	public void setCustomerFacade(CustomerFacade customerFacade) {
		this.customerFacade = customerFacade;
	}

	public boolean isAdmin() {
		return admin;
	}
	public void setAdmin(boolean admin) {
		this.admin = admin;

	}


	public String getLoginErr() {
		return loginErr;
	}

	public void setLoginErr(String loginErr) {
		this.loginErr = loginErr;
	}

	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}




	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
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
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}



	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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


	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}



}
