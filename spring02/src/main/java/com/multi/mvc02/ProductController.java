package com.multi.mvc02;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO dao;
	
	@RequestMapping("list9")
	public void list(Model model) {
		ArrayList<ProductVO> list = dao.list();
		model.addAttribute("list9", list);
	}
	
	@RequestMapping("one9")
	public void one(String name, Model model) {
		System.out.println(name);
		ProductVO bag = dao.one(name);
		model.addAttribute("bag", bag);
	}
}
