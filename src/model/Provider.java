package model;

public class Provider {
	
	private long id; //generato dal sistema
	private String name;
	
	private long vatEntry; //partita IVA
	private Address address;
	private float phoneNumber;
	private String email;
	
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
