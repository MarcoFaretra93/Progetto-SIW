package model;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.*;

@Stateless(name = "productFacade")
public class ProductFacade {

	@PersistenceContext(unitName = "unit-progettoSiw")
	private EntityManager em;

	public ProductFacade(){}

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
		try{
			TypedQuery<Product> q = this.em.createNamedQuery("findAllProducts", Product.class);
			return q.getResultList();	
		}catch(Exception e){
			return null;
		}
	}
}
