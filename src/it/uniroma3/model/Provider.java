package it.uniroma3.model;

import java.util.List;

import javax.persistence.*;


@Entity
public class Provider {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@Column(nullable=false, unique = true)
	private String name;
	
	@Column(nullable=false)
	private Long iva;
	
	@ManyToMany
	private List<Product> products;
	
	@OneToOne(cascade = {CascadeType.PERSIST, CascadeType.REMOVE})
	private Address address;
	
	public Provider() {}
	
	
	public Provider(Long id, String name, Long iva, Address address) {
		super();
		this.id = id;
		this.name = name;
		this.iva = iva;
		this.address=address;
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}

	
	public List<Product> getProducts() {
		return products;
	}


	public void setProducts(List<Product> products) {
		this.products = products;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Long getIva() {
		return iva;
	}


	public void setIva(Long iva) {
		this.iva = iva;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((iva == null) ? 0 : iva.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
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
		Provider other = (Provider) obj;
		if (iva == null) {
			if (other.iva != null)
				return false;
		} else if (!iva.equals(other.iva))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		return true;
	}


	@Override
	public String toString() {
		return "Provider [name=" + name + ", iva=" + iva + "]";
	}


	
	
	

	
	
}
