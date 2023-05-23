package com.multi.mvcNaverLogin;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	
	
	@RequestMapping("naverLogin")
	public void home(NaverVO vo, Model model) {
		System.out.println(vo);
		model.addAttribute("vo", vo);
	}
}
