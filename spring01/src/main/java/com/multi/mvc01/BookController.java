package com.multi.mvc01;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller // 스프링에서 제어하는 역할로 등록!
public class BookController {
	
	@Autowired  //spring이 주소를 찾아줌!
	BookDAO dao; //전역변수(글로벌 변수)
	// 컨트롤 하는 기능(CRUD) == 회원가입, 수정, 탈퇴, 정보검색
	
	// 클래스 내에서 기능처리 담당
	// 멤버변수 + 멤버메서드(기능처리 담당)
	// 하나의 요청당 하나의 메서드 (하나의 버튼호출당 하나의 함수 연결!)
	// 요청된 주소가 어떻게 될 때 바로 아래에 있는 메서드가 호출이 될지를 써주어야 한다.
	@RequestMapping("BookInsert")
	public void insert(BookVO bag) {
		//메서드의 입력변수(파라메터)로 변수를 
		//선언해두면, 컨트롤러의 메서드내에서는 
		//1)bag을 만들어서 
		//2)클라이언트로 부터 전달된 데이터도 받아줌
		//3)bag에 데이터 다 넣어줌.
		System.out.println("insert요청됨.");
		System.out.println(bag);
		System.out.println(dao);
		//dao에게 insert요청!!
		dao.insert(bag);
	}
	
	@RequestMapping("BookUpdate")
	public void update(BookVO bag) {
		System.out.println("update요청됨.");
		System.out.println(bag);
		dao.update(bag);
	}
	
	@RequestMapping("BookDelete")
	public void delete(int id) {
		System.out.println("delete요청됨.");
		System.out.println(id);
		dao.delete(id);
	}

	@RequestMapping("BookOne")
	public void one(int id, Model model) {
		System.out.println("one요청됨.");
		System.out.println(id);
		BookVO bag = dao.one(id);
		model.addAttribute("bag", bag);
	}

}

