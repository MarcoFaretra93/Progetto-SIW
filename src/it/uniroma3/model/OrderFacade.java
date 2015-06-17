package it.uniroma3.model;

import java.util.Date;
import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

@Stateless(name="oFacade")
public class OrderFacade {

	@PersistenceContext(unitName = "unit-progettoSiw")
	private EntityManager em;

	public Order createOrder(Date dateStarting,Customer customer){
		Order order=new Order(dateStarting,customer);
		em.persist(order);
		return order;
	}

	public void updateOrder(Order order){
		em.merge(order);
	}

	public List<OrderLine> addOrderLine(OrderLine orderLine,Order order) {
		List<OrderLine> orderLines= order.getOrderLines();
		orderLines.add(orderLine);
		order.setOrderLines(orderLines);
		em.merge(order);
		return orderLines;	
	}

	public void closeOrder(Order order) {
		Date dateComplete=new Date();
		order.setComplete(true);
		order.setDateComplete(dateComplete);
		em.merge(order);
	}


	public Order getOrder(Long id){
		//		Order order = em.find(Order.class, id);
		//		return order;
		Query q = em.createQuery("SELECT o FROM Order o WHERE o.id="+ id +"");
		Order order= (Order)q.getSingleResult(); 
		return order;
	}
	public List<OrderLine> getOrderLines(Order order) {
		List<OrderLine> orderLines = order.getOrderLines();
		return orderLines;
	}

	public List<Order> getNotEvadedOrders() {
		Query q = em.createNamedQuery("findNotEvadedOrder");
		List<Order> notEvadedOrders = q.getResultList();
		return notEvadedOrders;
	}

	public void evadeOrder(Order order) {
		Date dateEvasion = new Date();
		order.setEvade(true);
		order.setDateEvasion(dateEvasion);
		em.merge(order);
	}

}

