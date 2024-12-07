package com.base.servicei;


import com.base.model.product;

public interface productservicei {

	
	public void addproduct( product p);
	public Iterable<product> getAllproducts();
	public void deleteproduct(product p);
	public product editproduct(int id);
}
