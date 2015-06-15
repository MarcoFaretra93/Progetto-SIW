package it.uniroma3.controller;

import it.uniroma3.model.OrderLine;
import it.uniroma3.model.OrderLineFacade;
import it.uniroma3.model.Product;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.SessionScoped;

@ManagedBean(name="orderLineController")
@SessionScoped
public class OrderLineController {

	@EJB(beanName="olFacade")
	private OrderLineFacade orderLineFacade;

	private Long id;

	private Product product;
	private int quantity;
	private OrderLine orderLine;
	@ManagedProperty(value="orderController")
	private OrderController orderController;

	public OrderLine createOrderLine(int quantity, Product product){

		this.orderLine=orderLineFacade.createOrderLine(quantity, product);
		this.orderController.addOrderLine(this.orderLine);
		return this.orderLine;
	}
	public OrderLineFacade getOrderLineFacade() {
		return orderLineFacade;
	}

	public void setOrderLineFacade(OrderLineFacade orderLineFacade) {
		this.orderLineFacade = orderLineFacade;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public OrderLine getOrderLine() {
		return orderLine;
	}
	public void setOrderLine(OrderLine orderLine) {
		this.orderLine = orderLine;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}




}

