package it.uniroma3.model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless(name="olFacade")
public class OrderLineFacade {
	
	@PersistenceContext(unitName="unit-progettoSiw")
	private EntityManager em;
	
	public OrderLine createOrderLine( int quantity, Product product){
		OrderLine orderLine= new OrderLine(quantity,product);
		em.persist(orderLine);
		return orderLine;
	}	

	public EntityManager getEm() {
		return em;
	}

	public void setEm(EntityManager em) {
		this.em = em;
	}
	
}
