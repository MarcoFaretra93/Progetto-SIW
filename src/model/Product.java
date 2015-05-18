package model;

import java.util.List;
import javax.persistence.*;

@Entity
public class Product {

//	private long id;  generato dal sistema? O basta il codice? Vedere in seguito
	
	@Column(nullable = false, unique = true)
	private String code;
	@Column(nullable = false, unique = true)
	private String name;
	
	private String description; 
	
	@Column(nullable = true)
	private float price;
	@Column(nullable = true)
	private int quantity;
	
	@ManyToMany(mappedBy= "products")
	private List<Provider> providers;
	
	
	public Product (String code, String name, String description, float price, int quantity) {
		
		this.code = code;
		this.name = name;
		this.description = description;
		this.price = price;
		this.quantity = quantity;		
		
	}


	public String getCode() {
		return code;
	}


	public void setCode(String code) {
		this.code = code;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public float getPrice() {
		return price;
	}


	public void setPrice(float price) {
		this.price = price;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public List<Provider> getProviders() {
		return providers;
	}


	public void setProviders(List<Provider> providers) {
		this.providers = providers;
	}
	
	
}



