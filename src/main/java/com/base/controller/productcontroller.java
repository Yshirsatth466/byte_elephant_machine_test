package com.base.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.base.model.product;
import com.base.serviceimpl.productserviceimpl;

@Controller
public class productcontroller {
	@Autowired
	productserviceimpl serv;
	
	@RequestMapping("/")
	public String addproduct() {
		return "add";
	}

	@RequestMapping("save")
    public String savestudent(@ModelAttribute product p,Model m) {
		serv.addproduct(p);
		Iterable<product> productlist=serv.getAllproducts();
		m.addAttribute("products", productlist);
    	return "success";
    	
    }
	@RequestMapping("delete")
	public String deleteuser(@ModelAttribute product p,Model m) {
		
		serv.deleteproduct(p);
	    Iterable<product>userlist=serv.getAllproducts();
		m.addAttribute("products",userlist);
		return "success";
	}
	@RequestMapping("edit")
	public String EditUser(@RequestParam int id,Model m) {
		product product=serv.editproduct(id);
		m.addAttribute("product",product);
		return "edit";
	}
	
  @RequestMapping("update")
	public String updateuser(@ModelAttribute product p,Model m) {
		serv.addproduct(p);
		Iterable<product> productlist=serv.getAllproducts();
		m.addAttribute("products", productlist);
		return "success";
		
	}
	
}
