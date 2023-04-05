package com.multi.mvc02;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RestController {
	
	@RequestMapping("json1")
	@ResponseBody //요청을 받으면 return되는 데이터를 json으로 만들어서 요청하는 곳으로 다시 보냄.
	public MemberVO json1() {
		MemberVO bag = new MemberVO();
		bag.setId("root");
		bag.setPw("1234");
		bag.setName("hong");
		bag.setTel("011");
		return bag; 
		//얘는 {"id" : "root", "pw" : "1234", "name" : "hong", "tel" : "011"}
		//형식으로 전송됨
	}
	
	//위에 애와 같음!
//	@RequestMapping("json1")
//	@ResponseBody
//	public MemberVO json1(MemberVO bag) {
//		bag.setId("root");
//		bag.setPw("1234");
//		bag.setName("hong");
//		bag.setTel("011");
//		return bag; 
//	}
	
	@RequestMapping("json2")
	@ResponseBody
	public ArrayList<MemberVO> json2() {
		MemberVO bag = new MemberVO();
		bag.setId("root");
		bag.setPw("1234");
		bag.setName("hong");
		bag.setTel("011");
		
		MemberVO bag2 = new MemberVO();
		bag2.setId("root2");
		bag2.setPw("12342");
		bag2.setName("hong2");
		bag2.setTel("0112");
		
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		list.add(bag);
		list.add(bag2);
		
		return list; 
		//얘는 [{"id" : "root", "pw" : "1234", "name" : "hong", "tel" : "011"}
		//	  ,{"id" : "root2", "pw" : "12342", "name" : "hong2", "tel" : "0112"}]
		//형식으로 전송됨
	}
	
	@RequestMapping("json3")
	@ResponseBody //요청을 받으면 return되는 데이터를 json으로 만들어서 요청하는 곳으로 다시 보냄.
	public BbsVO json3() {
		BbsVO bag = new BbsVO();
		bag.setNo(5);
		bag.setTitle("수요일");
		bag.setContent("비가 많이 오네");
		bag.setWriter("rain");
		return bag; 
		//얘는 {"id" : "root", "pw" : "1234", "name" : "hong", "tel" : "011"}
		//형식으로 전송됨
	}
	
	@RequestMapping("json4")
	@ResponseBody
	public ArrayList<BbsVO> json4() {
		BbsVO bag = new BbsVO();
		bag.setNo(5);
		bag.setTitle("수요일");
		bag.setContent("비가 많이 오네");
		bag.setWriter("rain");
		
		BbsVO bag2 = new BbsVO();
		bag2.setNo(6);
		bag2.setTitle("화요일");
		bag2.setContent("하늘이 맑네");
		bag2.setWriter("sun");
		
		ArrayList<BbsVO> list = new ArrayList<BbsVO>();
		list.add(bag);
		list.add(bag2);
		
		return list; 
	}
}
