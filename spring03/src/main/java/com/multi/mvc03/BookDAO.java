package com.multi.mvc03;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class BookDAO {

	@Autowired
	SqlSessionTemplate my;
	
	// 가입
	public int insert(BookVO bag) {
		int result = my.insert("book.create", bag);
		return result;
	}
	
	// 수정
	public int update(BookVO bag) {
		int result = my.update("book.update", bag);
		return result;
	}

	// 탈퇴
	public int delete(int id) {
		int result = my.delete("book.delete", id);
		return result;
	}
	
	// 검색
	public BookVO one(int id) {
		BookVO bag = my.selectOne("book.one", id);
		return bag;
	}

	// 여러개 가져오기
	public List<BookVO> list() { // 검색하려면 ()안에 적어주기
		List<BookVO> list = my.selectList("book.all");
		return list;
	}
}