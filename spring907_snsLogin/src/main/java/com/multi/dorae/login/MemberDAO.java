package com.multi.dorae.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.multi.dorae.login.MemberVO;

@Component
public class MemberDAO { 
	
	@Autowired
	SqlSessionTemplate my;
	
	public void insert(MemberVO bag) {
		my.insert("member.create", bag);
	}
	
	public void delete(String id) {
		int result = my.delete("member.del", id); //int
		System.out.println(result);
	}

	public void update(MemberVO bag) {
		int result = my.update("member.up", bag);
		System.out.println(result);
	}
	public MemberVO one(String id) {
		MemberVO vo = my.selectOne("member.one", id); //id
		System.out.println(vo);
		return vo;
	}
	public List<MemberVO> list() {
		List<MemberVO> list = my.selectList("member.all");
		System.out.println(list.size());
		return list;
	}
	
	public int login(MemberVO bag) {
		int result = 0; // 항목명이랑 결과를 담고 있는 테이블이다.
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1. mySQL과 자바 연결할 부품 설정 성공.");
			
			String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password); // Connection
			System.out.println("2. mysql 연결 성공.");
			
			String sql = "select * from member where id=? and pw=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getId());
			ps.setString(2, bag.getPw());
			System.out.println("3. SQL문 부품(객체)으로 만들어주기.");
			
			ResultSet rs = ps.executeQuery();
			System.out.println("4. SQL문 오라클로 보내기 성공.");
			
			if (rs.next()) { // 검색결과가 있으면 TRUE 없으면 false
				System.out.println("검색결과 있음 성공!");
				result = 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
