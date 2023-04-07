package com.multi.mvc03;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookController {
	
	@Autowired
	BookDAO dao;
	
	@RequestMapping("insert3")
	public void insert(BookVO bag) {
		System.out.println("insert요청됨.");
		System.out.println(bag);
		System.out.println(dao);

		dao.insert(bag);
	}
	
	@RequestMapping("update3")
	public void update(BookVO bag) {
		System.out.println("update요청됨.");
		System.out.println(bag);
		dao.update(bag);
	}
	
	@RequestMapping("delete3")
	public void delete(int id) {
		System.out.println("delete요청됨.");
		System.out.println(id);
		dao.delete(id);
	}

	@RequestMapping("one3")
	public void one(int id, Model model) {
		System.out.println("one요청됨.");
		System.out.println(id);
		BookVO bag = dao.one(id);
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("list3")
	public void list(Model model) {
		List<BookVO> list = dao.list();
		model.addAttribute("list", list);
	}

}

