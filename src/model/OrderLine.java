package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity(name = "orderlines")
public class OrderLine {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	@ManyToOne
	private Product product;
	private float unitPrice;
	private int quantity;	
	
	public OrderLine(){}
	
	public OrderLine (Product prodict, float unitPrice, int quantity, Product product) {
		
		this.product = product;
		this.unitPrice = unitPrice;
		this.quantity = quantity;
		
	}


	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


	public Product getProduct() {
		return product;
	}


	public void setProduct(Product product) {
		this.product = product;
	}


	public float getUnitPrice() {
		return unitPrice;
	}


	public void setUnitPrice(float unitPrice) {
		this.unitPrice = unitPrice;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	
	
	
}
