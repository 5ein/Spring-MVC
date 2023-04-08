package com.multi.mvc100;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

//테이블 하나당 DAO하나! ==> CUD를 완성!!
@Component
public class BbsDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	// 삭제
	public int delete(int no) {
		int result = my.delete("bbs.del", no);
		return result;
	}
	
	// 수정
	public int update(BbsVO bag) {
		int result = my.update("bbs.up", bag);
		return result;
	}
	
	// 작성
	public int insert(BbsVO bag) {
		int result = my.insert("bbs.create", bag);
		return result;
	}
	
//	// 여러개 가져오기
//	public ArrayList<BbsVO> list() { // 검색하려면 ()안에 적어주기
//		
//		return list;
//	}
//
//	// 검색
//	public BbsVO one(int NO) {
//
//		return bag;
//	}


}