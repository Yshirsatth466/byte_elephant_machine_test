package com.base.repo;

import org.springframework.data.repository.CrudRepository;


import com.base.model.product;

public interface productrepo extends CrudRepository<product, Integer> {
	public product getProductById(int id);
}
