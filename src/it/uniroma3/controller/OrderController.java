package it.uniroma3.controller;

import java.util.Date;
import java.util.List;

import it.uniroma3.model.Customer;
import it.uniroma3.model.Order;
import it.uniroma3.model.OrderFacade;
import it.uniroma3.model.OrderLine;
import it.uniroma3.model.Product;

import javax.ejb.EJB;
import javax.ejb.EJBException;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.context.FacesContext;

@ManagedBean(name="orderController")
public class OrderController {

	@EJB(beanName="oFacade")
	private OrderFacade orderFacade;

	@ManagedProperty(value="#{customerController}")
	private CustomerController customerController;

	@ManagedProperty(value="#{orderLineController}")
	private OrderLineController orderLineController;

	@ManagedProperty(value="#{productController}")
	private ProductController productController;

	@ManagedProperty(value= "#{param.id}")
	private Long id;
	@ManagedProperty(value= "#{sessionScope['order']}")
	private Order order;
	private Date dateStarting;
	private Date dateComplete;
	private Date dateEvasion;
	private List<OrderLine> orderLines;
	private OrderLine orderLine;
	private int quantity;
	private Product product;
	private List<Order> notEvadedOrders;
	private String wrongId;

	private Customer selectedCustomer;

	public String createOrder(){
		this.dateStarting=new Date();
		this.order=orderFacade.createOrder(dateStarting, customerController.getCustomer());
		FacesContext.getCurrentInstance().getExternalContext().getSessionMap().put("order", this.order);
		this.customerController.addOrder(this.order);
		return "order.xhtml";
	}
	
	public void addOrderLine(OrderLine orderLine){
		this.orderLines.add(orderLine);
		}

	public String createOrderLine(){
		this.order= (Order) FacesContext.getCurrentInstance().getExternalContext().getSessionMap().get("order");
		this.product= (Product) FacesContext.getCurrentInstance().getExternalContext().getSessionMap().get("product");

		this.orderLine=orderLineController.createOrderLine(this.quantity, this.product);
		this.orderLines=orderFacade.addOrderLine(orderLine,order);
		return "listOrderLine";
	}

	public String closeOrder(){
		this.orderFacade.closeOrder(this.order);
		return "orderClosed";
	}

	public String findOrder(){
		this.order = this.orderFacade.getOrder(this.id);
		if(this.order==null)
			return "index";
		this.orderLines = this.orderFacade.getOrderLines(this.order);


		return "customerOrder";
	}

	public String listNotEvadedOrders(){
		this.notEvadedOrders= this.orderFacade.getNotEvadedOrders();
		return "listNotEvadedOrders";
	}

	public String evadeOrder(){
		this.order=this.orderFacade.getOrder(this.id);
		this.orderLines=this.order.getOrderLines();
		for(OrderLine line: orderLines){
			this.product=line.getProduct();
			if(product.getQuantity() < line.getQuantity()){
				return "notInStock";
			}
		}
		for(OrderLine line: orderLines){
			this.product=line.getProduct();
			this.productController.changeQuantity(this.product, line.getQuantity());
		}
		this.orderFacade.evadeOrder(this.order);
		return "orderEvaded";
	}

	public String findCustomerByOrder(){
		try {this.order=this.orderFacade.getOrder(id);} 
		catch (EJBException e) { 
			this.wrongId="Wrong ID"; 
			return "findCustomer.xhtml";
		} 
		this.selectedCustomer=this.order.getCustomer();
		return "selectedCustomer"; }

	public OrderFacade getOrderFacade() {
		return orderFacade;
	}


	public List<Order> getNotEvadedOrders() {
		return notEvadedOrders;
	}

	public void setNotEvadedOrders(List<Order> notEvadedOrders) {
		this.notEvadedOrders = notEvadedOrders;
	}

	public void setOrderFacade(OrderFacade orderFacade) {
		this.orderFacade = orderFacade;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}


	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Date getDateStarting() {
		return dateStarting;
	}

	public void setDateStarting(Date dateStarting) {
		this.dateStarting = dateStarting;
	}

	public Date getDateComplete() {
		return dateComplete;
	}

	public void setDateComplete(Date dateComplete) {
		this.dateComplete = dateComplete;
	}



	public Customer getSelectedCustomer() {
		return selectedCustomer;
	}

	public void setSelectedCustomer(Customer selectedCustomer) {
		this.selectedCustomer = selectedCustomer;
	}

	public Date getDateEvasion() {
		return dateEvasion;
	}

	public void setDateEvasion(Date dateEvasion) {
		this.dateEvasion = dateEvasion;
	}

	public List<OrderLine> getOrderLines() {
		return orderLines;
	}

	public void setOrderLines(List<OrderLine> orderLines) {
		this.orderLines = orderLines;
	}

	public OrderLine getOrderLine() {
		return orderLine;
	}

	public void setOrderLine(OrderLine orderLine) {
		this.orderLine = orderLine;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public CustomerController getCustomerController() {
		return customerController;
	}

	public void setCustomerController(CustomerController customerController) {
		this.customerController = customerController;
	}

	public OrderLineController getOrderLineController() {
		return orderLineController;
	}

	public void setOrderLineController(OrderLineController orderLineController) {
		this.orderLineController = orderLineController;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public ProductController getProductController() {
		return productController;
	}

	public void setProductController(ProductController productController) {
		this.productController = productController;
	}

	public String getWrongId() {
		return wrongId;
	}

	public void setWrongId(String wrongId) {
		this.wrongId = wrongId;
	}





}
