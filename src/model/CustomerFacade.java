package it.uniroma3.model;

import java.util.Date;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

@Stateless(name="cFacade")
public class CustomerFacade {

    @PersistenceContext(unitName= "unit-CustomerAddress")
    private EntityManager em;

    public Customer validate (String userName, String password){
        Query q = em.createQuery("SELECT c FROM Customer c WHERE c.userName='"+ userName + "' AND c.password='"+password+"'");
        Customer c = (Customer)q.getSingleResult();
        return c;
    }

    public EntityManager getEm() {
        return em;
    }

    public void setEm(EntityManager em) {
        this.em = em;
    }

    public Customer createCustomer(String firstName, String lastName, String userName, String password, String email, Date dateOfBirth, Date dateOfRegistration, String street, String city){
        Address address = new Address(street, city);
        Customer customer = new Customer(firstName, lastName, userName, password, email, dateOfBirth, dateOfRegistration, address);
        em.persist(customer);
        return customer;
    }

    public void addOrder(Customer customer, Order order) {
        customer.getOrders().add(order);
        em.merge(customer);
    }



}