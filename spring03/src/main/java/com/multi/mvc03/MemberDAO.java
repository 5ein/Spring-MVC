package com.multi.mvc03;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component 
public class MemberDAO {

	
	@Autowired
	SqlSessionTemplate my;
	
	// 가입
	public int insert(MemberVO bag) {
		int result = my.insert("member.create", bag); //""안에는 namespace값.insert의ID값 적어주면됨
		return result;
	}

	// 수정
	public int update(MemberVO bag) {
		int result = my.update("member.up", bag);//""안에는 namespace값.update의ID값 적어주면됨
		return result;
	}

	// 탈퇴
	public int delete(String id) {
		int result = my.delete("member.del", id);//""안에는 namespace값.delete의ID값 적어주면됨
		return result;
	}

//	// 여러개 가져오기
//	public ArrayList<MemberVO> list() { // 검색하려면 ()안에 적어주기
//		return list;
//	}
//
//	// 검색
//	public MemberVO one(String id) {
//		return bag;
//	}
//
//	// 로그인
//	public int login(MemberVO bag) {
//		return result;
//	}

}