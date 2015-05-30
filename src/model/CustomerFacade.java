package model;

import java.util.Date;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NamedQuery;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

@Stateless(name = "customerFacade")
@NamedQuery(name = "loginCustomer", query = "SELECT c FROM Customer WHERE fistname=firstName AND lastName=lastName")
public class CustomerFacade {
	
	@PersistenceContext(unitName = "unit-progettoSiw")
	private EntityManager em;
	
	public Customer login(String firstName, String lastName, String password) {
		Query q = em.createNamedQuery("loginCustomer", Customer.class);
		Customer customer = (Customer) q.getSingleResult();
		if(customer.checkPassword(customer.getPassword()))
			return customer;
		else 
			return null;
	}

	public Customer findCustomer(Long id) {
		Customer c = em.find(Customer.class, id);
		return c;
	}
	
	public Customer createCustomer(String firstName, String lastName, Date dateOfBirth, Date registrationDate, 
			Address address, String email, String role){
		Customer customer = new Customer(firstName, lastName, dateOfBirth, registrationDate, address, email, role);
		em.persist(customer);
		return customer;
	}
	
}
