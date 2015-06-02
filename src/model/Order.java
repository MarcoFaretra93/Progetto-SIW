package model;

import java.util.Date;
import java.util.List;
import javax.persistence.*;

@Entity
@Table(name="orders")
public class Order {
	
	@Id
	@GeneratedValue (strategy = GenerationType.AUTO)
	private long id;
	
	@Temporal (TemporalType.TIMESTAMP) //restituisce sia la data che l'orario
	private Date creationDate;
	@Temporal (TemporalType.TIMESTAMP)	
	private Date completionDate;
	@Temporal (TemporalType.TIMESTAMP)
	private Date evasionDate;
		
	@OneToMany(fetch = FetchType.EAGER) //EAGER: scelta da discutere
	private List<OrderLine> orderLines;
	
	@ManyToOne
	@JoinColumn(name="customer_id") 
	private Customer customer;
	
	private boolean completed;
	private boolean evaded;
	
	public Order(){}
	
	public Order (Customer customer, Date creationDate) {
		
		this.customer = customer;
		this.creationDate = creationDate;
		
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Date getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}

	public Date getCompletionDate() {
		return completionDate;
	}

	public void setCompletionDate(Date completionDate) {
		this.completionDate = completionDate;
	}

	public Date getEvasionDate() {
		return evasionDate;
	}

	public void setEvasionDate(Date evasionDate) {
		this.evasionDate = evasionDate;
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

	public boolean isCompleted() {
		return completed;
	}

	public void setCompleted(boolean completed) {
		this.completed = completed;
	}

	public boolean isEvaded() {
		return evaded;
	}

	public void setEvaded(boolean evaded) {
		this.evaded = evaded;
	}

	@Override
	public String toString() {
		return "Order [creationDate=" + creationDate + ", completionDate="
				+ completionDate + ", evasionDate=" + evasionDate
				+ ", completed=" + completed + ", evaded=" + evaded + "]";
	}

	
	
	

}
