package model;

import javax.ejb.Stateless;
import javax.persistence.*;

@Stateless(name = "productFacade")
public class ProductFacade {
	
    @PersistenceContext(unitName = "unit-CustomerAddress")
    private EntityManager em;
    
    
    public Product createProduct(String code, String name, String description, float price, int quantity) {
		Product product = new Product(code, name, description, price, quantity);
		em.persist(product);
		return product;
	}
	
	public Product getProduct(Long id) {
	    Product product = em.find(Product.class, id);
		return product;
	}
	
	
	

}
