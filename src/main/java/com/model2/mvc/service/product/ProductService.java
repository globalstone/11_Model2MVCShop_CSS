package com.model2.mvc.service.product;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Product;

import java.util.List;
import java.util.Map;

public interface ProductService {
	
	public void addProduct(Product product) throws Exception;
	
	public Product getProduct(int productNo) throws Exception;
	
	public Map<String, Object> getProductList(Search search) throws Exception;
	
	public void updateProduct(Product product) throws Exception;

}