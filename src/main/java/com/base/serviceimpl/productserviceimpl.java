package com.base.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.model.product;
import com.base.repo.productrepo;
import com.base.servicei.productservicei;

@Service
public class productserviceimpl  implements productservicei{
	@Autowired 
	productrepo productrepo;
	
	public void addproduct(product p) {
		productrepo.save(p);
		System.out.println("student save ......");
		
	}
	public Iterable<product> getAllproducts(){
	  return productrepo.findAll();
	}
	
	public void deleteproduct(product p) {
		productrepo.delete(p);
	}
	public product editproduct(int id) {
		return productrepo.getProductById(id);
	}
}
