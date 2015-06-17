package it.uniroma3.controller;

import java.util.List;

import it.uniroma3.model.Product;
import it.uniroma3.model.ProductFacade;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.context.FacesContext;

@ManagedBean(name="productController")
public class ProductController {
	
	
	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String name;
	private Float price;
	private String description;
	private String code;
	private Product product;
	private List<Product> products;
	private int quantity;
	
	@EJB(beanName="pFacade")
	private ProductFacade productFacade;
	
	
	public String createProduct() {
		this.product = productFacade.createProduct(this.name, this.code, this.price, this.description, this.quantity);
		return "product"; 
	}
	
	public String listProducts() {
			this.products = productFacade.getAllProducts();
		return "products"; 
	}
	
	public String listProductsAdd(){
			this.products = productFacade.getAllProducts();
		return "productsList"; 
	}

	public String findProduct() {
		this.product = productFacade.getProduct(id);
		return "product";
	}
	public String findProduct(Long id){
		product = productFacade.getProduct(id);
		return "product";
	}
	
	public String findProductDetails() {
		this.product = productFacade.getProduct(id);
		return "productDetails";
	}
	
	public String findProductToInsert() {
		this.product = productFacade.getProduct(id);
		FacesContext.getCurrentInstance().getExternalContext().getSessionMap().put("product", this.product);
		
		return "productToInsert";
	}
	


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public ProductFacade getProductFacade() {
		return productFacade;
	}

	public void setProductFacade(ProductFacade productFacade) {
		this.productFacade = productFacade;
	}

	public void changeQuantity(Product product, int quantity) {
		this.productFacade.changeQuantity(product, quantity);
	}
	
}


