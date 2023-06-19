package com.multicampus.boot2;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DemoController {

	@Autowired
	MemberService memberService;
	
	@GetMapping("go")
	public void go() {
		System.out.println("it's me");
	}
	
	@GetMapping("save")
	public MemberVO save(MemberVO vo, Model model) {
		System.out.println(vo);
		MemberVO vo2 = memberService.save(vo);
		model.addAttribute("result", vo2);
		return vo2;
	}

	@GetMapping("delete")
	public void deleteOne(MemberVO vo) {
		memberService.delete(vo);
	}
	
	@GetMapping("findId")
	public Optional<MemberVO> read(MemberVO vo, Model model) {
		Optional<MemberVO> one = memberService.findById(vo.getId());
		System.out.println("controller result>> " + one);
		model.addAttribute("result", one);
		return one;
		
	}
	
	@GetMapping("findAll")
	public void findAll(Model model) {
		List<MemberVO> list = memberService.findAll();
		System.out.println("controller result>> " + list);
		model.addAttribute("list", list);
	}
	
	@GetMapping("update")
	public void update(MemberVO vo, Model model) {
		MemberVO vo2 = memberService.update(vo);
		model.addAttribute("result", vo2);
	}
	
	@RequestMapping("hi")
	public @ResponseBody String call(Model model) {
		System.out.println("컨트롤러 호출됨.");
		model.addAttribute("result", "win!!!");
		return "hi";
	}
	
	@RequestMapping("hi2")
	public String call2(Model model) {
		System.out.println("컨트롤러 호출됨.");
		model.addAttribute("result", "win!!!");
		return "hi2";
	}
	
	@RequestMapping("hi3")
	public String call3(Model model, String name) {
		System.out.println("컨트롤러 호출됨.");
		model.addAttribute("result", name + "-- win!!!");
		return "hi3";
	}
	
	@RequestMapping("hi4")
	public void call4(Model model, MemberVO vo) {
		System.out.println("컨트롤러 호출됨.");
		model.addAttribute("result", vo);
	}
}
