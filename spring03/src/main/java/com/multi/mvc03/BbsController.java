package com.multi.mvc03;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //스프링에서 제어하는 역할로 등록! 
public class BbsController {

	@Autowired
	BbsDAO dao;

	@RequestMapping("insert2")
	public void insert(BbsVO bag) {
		
		System.out.println("insert요청됨.");
		System.out.println(bag);
		System.out.println(dao);
		dao.insert(bag);
	}
	
	@RequestMapping("update2")
	public void update(BbsVO bag) {
		System.out.println("update요청됨.");
		System.out.println(bag);	
		dao.update(bag);
	}
	
	@RequestMapping("delete2")
	public void delete(int no) {
		System.out.println("delete요청됨.");
		System.out.println(no);
		dao.delete(no);
	}
	
	@RequestMapping("one2")
	public void one(int no, Model model) {
		System.out.println("one요청됨.");
		System.out.println(no);
		BbsVO bag = dao.one(no);
		model.addAttribute("bag", bag);
	}
	
//	@RequestMapping("list2")
//	public void list(Model model) {
//		ArrayList<BbsVO> list = dao.list();
//		System.out.println(list.size()); //사이즈를 찍어보세요.
//		model.addAttribute("list", list);
//	}
}