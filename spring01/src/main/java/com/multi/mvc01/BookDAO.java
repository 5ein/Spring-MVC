package com.multi.mvc01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Component;

//스프링에 dao는 싱글톤으로 하나만 만들어서 사용할게!라고 설정해야함.
//2가지 방법을 할 수 있음. <어노테이션(표시)방법, XML방법>
@Component //어노테이션 방법으로 싱글톤 만듦
public class BookDAO {
//특정한 방법으로 실행하는 클래스(model, 방법)
	// 메서드를 만드는 것 ==> 메서드 정의(define)!
	// 메서드를 정의했다고 실행되는 것은 아니다.!
	// 메서드를 쓰는 것 => 메서드 호출(call)!

	// 검색
	public BookVO one(int id) {

		ResultSet rs = null; // int를 -> ResultSet로 바꿈, 0 -> null로 바꿈
		// 항목명 + 결과데이터를 담고있는 테이블
		// 기본형 정수/실수/문자/논리만 값으로 초기화
		// 나머지 데이터형(참조형) 주소가 들어있음.
		// 참조형 변수를 초기화 할 때는 null(주소가 없다는 의미)

		BookVO bag = null;
		try {
			// 1.mySQL과 연결한 부품 설정
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1.mySQL과 자바 연결할 부품 설정 성공.");

			// 2.mySQL에 연결해보자.(java --- oracle)
			String url = "jdbc:mysql://localhost:3306/multi";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공.");

			// 3. SQL문 부품(객체)으로 만들어주기
			String sql = "select * from book where id = ? "; // *를 뺴면 sql문법에러가 난다.
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기.");

			// 4. SQL문 mySQL로 보내기
			rs = ps.executeQuery(); // select문 전송시 정수X,테이블O executeUpdate 대신 executeQuery
			System.out.println("4. SQL문 mySQL로 보내기 성공.");
			if (rs.next()) { // 검색결과가 있는지 여부는 rs.next()
				// true이면 있다라는 의미, false이면 없다라는 의미
				System.out.println("검색결과 있음. 성공.");
				int id2 = rs.getInt(1); // id
				String name = rs.getString(2); // name
				String url2 = rs.getString(3); // url
				String img = rs.getString(4); // img
				System.out.println(id2 + " " + name + " " + url2 + " " + img);
				// 검색결과를 검색화면 UI부분에 넣어주어야 함. (여기에jop넣으면 안됨)
				bag = new BookVO();
				bag.setId(id2);
				bag.setName(name);
				bag.setUrl(url2);
				bag.setImg(img);
			} else {
				System.out.println("검색결과 없음. 성공.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// return id, pw, name, tel은 XXXX! ==> 파이썬만 가능
		// return 뒤에는 반드시 여러 데이터를 묶어서 리턴해주어야 함 ==> 자바는 가방을 만들어줘야함
		// 검색결과가 있을 때는 bag에 데이터가 들어있음.
		// 검색결과가 없을 때는 bag에 무엇이 들어있나? null
		return bag;
	}

	// 탈퇴
	public int delete(int id) {

		int result = 0;
		try {
			// 1.mySQL과 연결한 부품 설정
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1.mySQL과 자바 연결할 부품 설정 성공.");

			// 2.mySQL에 연결해보자.(java --- oracle)
			String url = "jdbc:mysql://localhost:3306/multi";
			// 8버전일때는 밑에꺼 넣기
			// String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공.");

			// 3. SQL문 부품(객체)으로 만들어주기
			String sql = "delete from book where id = ? ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기.");

			// 4. SQL문 mySQL로 보내기
			result = ps.executeUpdate();
			System.out.println("4. SQL문 mySQL로 보내기 성공.");
			if (result == 1) { // 원래 delete는 성공하면 1이나 1보다 큰수가 나올수도 있다. 그럴떄는 >= 1
				System.out.println("탈퇴 성공.");
			}
		} catch (Exception e) { // 얘일때는 result가 그대로 0
			e.printStackTrace();
		}
		System.out.println(result);
		return result; // result변수를 전달하는 것이 아니고 0 or 1인 값만 전달된거
	}

	// 수정
	public int update(BookVO bag) {
		// 1. 가방을 받아서 저장해두자.
		// 2. 필요할 때 가방에서 값들을 하나씩 꺼내자.

		int result = 0;
		try {
			// 1.mySQL과 연결한 부품 설정
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1.mySQL과 자바 연결할 부품 설정 성공.");

			// 2.mySQL에 연결해보자.(java --- oracle)
			String url = "jdbc:mysql://localhost:3306/multi";
			// 8버전일때는 밑에꺼 넣기
			// String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공.");

			// 3. SQL문 부품(객체)으로 만들어주기
			String sql = "update book set name = ? where id = ? ";
			PreparedStatement ps = con.prepareStatement(sql);
			// 2. 필요할 때 가방에서 값들을 하나씩 꺼내자.
			ps.setString(1, bag.getName());
			ps.setInt(2, bag.getId());
			System.out.println("3. SQL문 부품(객체)으로 만들어주기.");

			// 4. SQL문 mySQL로 보내기
			result = ps.executeUpdate(); // sql문 실행결과가 int(실행횟수)
			System.out.println("4. SQL문 mySQL로 보내기 성공.");
			if (result == 1) {
				System.out.println("수정 성공.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result; // result변수를 전달하는 것이 아니고 0 or 1인 값만 전달된거
	}

	// 가입
	public int insert(BookVO bag) {
		// 1. 가방을 받아서 변수에 넣어주세요.
		int result = 0;

		try {
			// 1.mySQL과 연결한 부품 설정
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1.mySQL과 자바 연결할 부품 설정 성공.");

			// 2.mySQL에 연결해보자.(java --- oracle)
			String url = "jdbc:mysql://localhost:3306/multi";
			// 8버전일때는 밑에꺼 넣기
			// String url = "jdbc:mysql://localhost:3306/multi?serverTimezone=UTC";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공.");

			// 3. SQL문 부품(객체)으로 만들어주기
			String sql = "insert into multi.book values (null, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			// 2. 가방에서 값들을 하나씩 꺼내쓰세요.
			ps.setString(1, bag.getName());
			ps.setString(2, bag.getUrl());
			ps.setString(3, bag.getImg());
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공.");

			// 4. SQL문 mySQL로 보내기
			result = ps.executeUpdate(); // 1
			System.out.println("4. SQL문 mySQL로 보내기 성공.");
			if (result == 1) {
				System.out.println("회원가입 성공!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println(result);
		return result;
	}

}