package model;

import java.util.List;
import javax.persistence.*;

@Entity
public class Provider {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id; 
	
	@Column(nullable = false)
	private String name;
	
	@Column(nullable = false)
	private long vatEntry; //partita IVA
	
	@OneToOne(cascade = {CascadeType.PERSIST, CascadeType.REMOVE})
	private Address address;
	@Column(nullable = true)
	private float phoneNumber;
	@Column(nullable = true)
	private String email;
	
	@ManyToMany
	private List<Product> products;
	
	
	public Provider (long id, String name, long vatEntry, Address address, float phoneNumber, String email) {
		
		this.id = id;
		this.name = name;
		this.vatEntry = vatEntry;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.email = email;
		
	}

	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getVatEntry() {
		return vatEntry;
	}

	public void setVatEntry(long vatEntry) {
		this.vatEntry = vatEntry;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public float getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(float phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	
	

}
