package model;

import java.util.Date;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

@Stateless(name = "customerFacade")
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
	
	public Customer createCustomer(String firstName, String lastName, Date dateOfBirth, 
			Address address, String email, String password, String role){
		Customer customer = new Customer(firstName, lastName, dateOfBirth, address, email,password, role);
		em.persist(customer);
		return customer;
	}
	
}
