package model;

import java.util.Date;
import java.util.List;

public class Order {
	
	private long id;
	
	private Date creationTime;
	private Date completionTime;
	private Date evasionTime;
		
	private List<OrderLine> orderLines;
	
	private Customer customer;
	
	public Order (Customer customer, Date creationTime) {
		
		this.customer = customer;
		this.creationTime = creationTime;
		
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Date getCreationTime() {
		return creationTime;
	}

	public void setCreationTime(Date creationTime) {
		this.creationTime = creationTime;
	}

	public Date getCompletionTime() {
		return completionTime;
	}

	public void setCompletionTime(Date completionTime) {
		this.completionTime = completionTime;
	}

	public Date getEvasionTime() {
		return evasionTime;
	}

	public void setEvasionTime(Date evasionTime) {
		this.evasionTime = evasionTime;
	}

	public List<OrderLine> getOrderLines() {
		return orderLines;
	}

	public void setOrderLines(List<OrderLine> orderLines) {
		this.orderLines = orderLines;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
	
	
	

}
