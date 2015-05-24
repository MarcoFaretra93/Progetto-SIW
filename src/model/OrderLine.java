package model;

public class OrderLine {
	
	private long id;
	
	private Product product;
	private float unitPrice;
	private int quantity;	
	
	
	public OrderLine (Product prodict, float unitPrice, int quantity) {
		
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
