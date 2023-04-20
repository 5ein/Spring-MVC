package com.multi.mvc901;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberDAO { 
	
	@Autowired
	SqlSessionTemplate my;
	
	public void insert(MemberVO bag) {
		my.insert("member.create", bag);
	}
	
	public void delete(String id) {
		my.delete("member.del", id);
	}
	
	public void update(MemberVO bag) {
		int result = my.update("member.up", bag);
		System.out.println(result);
	}
	
	public MemberVO one(String id) {
		//타입 MemberVo  //one은 selectOne
		MemberVO vo = my.selectOne("member.one", id);
		System.out.println(vo);
		return vo;
	}
	
	public List<MemberVO> list() {
		//row하나당 어떤 vo에 넣을지만 지정하면 my.selectList()를 호출한 경우에는 
		//myBatis가 list vo가 잔뜩 들어간 LIst로 만들어준다.
		//타입 List<MemberVO>  //list는 selectList
		List<MemberVO> list = my.selectList("member.all");
		System.out.println(list.size());
		return list;
	}
	
}