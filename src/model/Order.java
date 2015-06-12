package it.uniroma3.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="orders")
@NamedQuery(name = "findNotEvadedOrder", query = "SELECT o FROM Order o WHERE o.Evade= FALSE AND o.Complete = TRUE")

public class Order {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;

	@Column(nullable=false)
	@Temporal(TemporalType.TIMESTAMP)
	private Date dateStarting;

	@Temporal(TemporalType.TIMESTAMP)
	private Date dateComplete;

	@Temporal(TemporalType.TIMESTAMP)
	private Date dateEvasion;

	private boolean Complete;
	private boolean Evade;

	@OneToMany(fetch = FetchType.EAGER)
	@JoinColumn(name="orders_id")
	private List<OrderLine> orderLines;

	@ManyToOne
	@JoinColumn(name="customer_id")
	private Customer customer;

	public Order(){

	}

	public Order(Date dateStarting, Customer customer) {
		super();
		this.dateStarting = dateStarting;
		this.orderLines=new ArrayList<OrderLine>();
		this.Complete=false;
		this.Evade=false;
		this.customer=customer;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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




	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((dateStarting == null) ? 0 : dateStarting.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Order other = (Order) obj;
		if (dateStarting == null) {
			if (other.dateStarting != null)
				return false;
		} else if (!dateStarting.equals(other.dateStarting))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Order [dateStarting=" + dateStarting + ", dateComplete="
				+ dateComplete + ", dateEvasion=" + dateEvasion
				+ ", orderLines=" + orderLines + "]";
	}

	public boolean isComplete() {
		return Complete;
	}

	public void setComplete(boolean complete) {
		Complete = complete;
	}

	public boolean isEvade() {
		return Evade;
	}

	public void setEvade(boolean evade) {
		Evade = evade;
	}













}