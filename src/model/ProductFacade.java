package model;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.*;

@Stateless(name = "productFacade")
@NamedQuery(name = "findAllProducts", query = "SELECT p FROM Product p")
public class ProductFacade {
	
    @PersistenceContext(unitName = "unit-progettoSiw")
    private EntityManager em;
    
    
    public Product createProduct(String code, String name, String description, float price) {
		Product product = new Product(code, name, description, price);
		em.persist(product);
		return product;
	}
	
	public Product getProduct(Long id) {
	    Product product = em.find(Product.class, id);
		return product;
	}

	public List<Product> getAllProducts() {
		TypedQuery<Product> query = em.createNamedQuery("findAllProduct", Product.class);
		List<Product> products = query.getResultList();
		return products;
	}
}
