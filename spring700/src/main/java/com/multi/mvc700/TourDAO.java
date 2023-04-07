package com.multi.mvc700;

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
public class TourDAO {

	@Autowired
	SqlSessionTemplate my;
	
	// 가입
	public int insert(TourVO bag) {
		int result = my.insert("tour.create", bag);
		return result;
	}
	
	// 수정
	public int update(TourVO bag) {
		int result = my.update("tour.update", bag);
		return result;
	}

	// 삭제
	public int delete(int id) {
		int result = my.delete("tour.delete", id);
		return result;
	}
	
	// 검색
	public TourVO one(int id) {
		TourVO bag = my.selectOne("tour.one", id);
		return bag;
	}

	// 여러개 가져오기
	public List<TourVO> list() { // 검색하려면 ()안에 적어주기
		List<TourVO> list = my.selectList("tour.all");
		return list;
	}
}