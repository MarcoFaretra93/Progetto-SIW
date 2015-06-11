package model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQuery;

@Entity
@NamedQuery(name = "findAllProducts", query = "SELECT p FROM Product p")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;  
	
	@Column(nullable = false, unique = true)
	private String code;
	@Column(nullable = false, unique = true)
	private String name;
	
	@Column
	private String description; 
	
	@Column(nullable = true)
	private Float price;

	@ManyToMany(mappedBy= "products")
	private List<Provider> providers;
	
	public Product(){}
	
	public Product (String code, String name, String description, Float price) {
		
		this.code = code;
		this.name = name;
		this.description = description;
		this.price = price;
		
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


	public List<Provider> getProviders() {
		return providers;
	}


	public void setProviders(List<Provider> providers) {
		this.providers = providers;
	}
	public void setId(Long id){
		this.id=id;
	}
	public Long getId(){
		return this.id;
	}
}



