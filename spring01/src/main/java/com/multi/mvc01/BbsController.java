package com.multi.mvc01;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {
	
	@Autowired
	BbsDAO dao;
	
	@RequestMapping("insert2.multi") //이렇게 .뒤에 회사명을 적기도 한다.
	public void insert2(BbsVO bag) {
		System.out.println("insert2요청됨.");
		System.out.println(bag);
		System.out.println(dao);
		dao.insert(bag);
	}
	
	@RequestMapping("update2.multi")
	public void update2(BbsVO bag) {
		System.out.println("update2요청됨.");
		System.out.println(bag);
		System.out.println(dao);
		dao.update(bag);
	}
	
	@RequestMapping("delete2.multi")
	public void delete2(int no) {
		System.out.println("delete2요청됨.");
		System.out.println(no);
		System.out.println(dao);
		dao.delete(no);
	}
	
	@RequestMapping("one2.multi")
	public void one2(int no) {
		System.out.println("one2요청됨.");
		System.out.println(no);
		System.out.println(dao);
		dao.one(no);
	}
	
	@RequestMapping("list2.multi")
	public void list2(BbsVO bag) {
		
	}
}
