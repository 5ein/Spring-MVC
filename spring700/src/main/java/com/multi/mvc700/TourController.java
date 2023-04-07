package com.multi.mvc700;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TourController {
	
	@Autowired
	TourDAO dao;
	
	@RequestMapping("insert")
	public void insert(TourVO bag) {
		System.out.println("insert요청됨.");
		System.out.println(bag);
		System.out.println(dao);
		dao.insert(bag);
	}
	
	@RequestMapping("update")
	public void update(TourVO bag) {
		System.out.println("update요청됨.");
		System.out.println(bag);
		dao.update(bag);
	}
	
	@RequestMapping("delete")
	public void delete(int no) {
		System.out.println("delete요청됨.");
		System.out.println(no);
		dao.delete(no);
	}

	@RequestMapping("one")
	public void one(int no, Model model) {
		System.out.println("one요청됨.");
		System.out.println(no);
		TourVO bag = dao.one(no);
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("list")
	public void list(Model model) {
		List<TourVO> list = dao.list();
		model.addAttribute("list", list);
	}

}

