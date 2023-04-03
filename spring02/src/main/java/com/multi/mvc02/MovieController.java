package com.multi.mvc02;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //컨트롤러로 등록, 싱글톤 생성
public class MovieController {
	
	@RequestMapping("movie")
	public void movie(MovieVO vo, Model model) {
		System.out.println(vo);
		model.addAttribute("vo", vo);
	}
	
	@RequestMapping("fruit")
	public void fruit(Model model) {
		ArrayList<String> list = new ArrayList<String>();
		list.add("사과");
		list.add("복숭아");
		list.add("체리");
		list.add("딸기");
		list.add("포도");
		list.add("참외");
		model.addAttribute("list", list);
	}
	@RequestMapping("tour")
	public void tour(Model model) {
		ArrayList<String> list2 = new ArrayList<String>();
		list2.add("미국");
		list2.add("영국");
		list2.add("호주");
		list2.add("프랑스");
		list2.add("대만");
		list2.add("일본");
		model.addAttribute("list2", list2);
	}
}
