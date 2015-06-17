package it.uniroma3.model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;

import java.util.List;

@Stateless(name="pFacade")
public class ProductFacade {

	@PersistenceContext(unitName = "unit-progettoSiw")
	private EntityManager em;

	public Product createProduct(String name, String code, Float price, String description,int quantity) {
		Product product = new Product(name, price, description, code, quantity);
		try{
			em.persist(product);
		}
		catch(Exception e){
			System.out.println("ERRORE!!");
		}
		return product;
	}

	public Product getProduct(Long id) {
		Product product = em.find(Product.class, id);
		return product;
	}

	public List<Product> getAllProducts() {
		CriteriaQuery<Product> cq = em.getCriteriaBuilder().createQuery(Product.class);
		cq.select(cq.from(Product.class));
		List<Product> products = em.createQuery(cq).getResultList();
		return products;
	}

	public void updateProduct(Product product) {
		em.merge(product);
	}

	private void deleteProduct(Product product) {
		em.remove(product);
	}

	public void deleteProduct(Long id) {
		Product product = em.find(Product.class, id);
		deleteProduct(product);
	}

	public void changeQuantity(Product product, int quantity) {
		product.setQuantity(product.getQuantity()-quantity);
		em.merge(product);
	}
}