package multi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

//테이블 하나당 DAO하나! ==> CUD를 완성!!
public class BbsDAO {

	// 여러개 가져오기
	public ArrayList<BbsVO> list() { // 검색하려면 ()안에 적어주기
		ResultSet rs = null; // 항목명 + 결과데이터를 담고있는 테이블

		// 가방들 넣어줄 큰 컨테이너 역할을 부품이 필요!
		// ArrayList
		// ArrayList<MemberVO> ==> MemberVO만 들어간 arraylist라는 의미
		ArrayList<BbsVO> list = new ArrayList<>(); // list라는 컨테이너에게 가방을 넣겠다.

		BbsVO bag = null;
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

			// 3.
			String sql = "select * from bbs"; // 조건주지 않고 다 가져옴
			PreparedStatement ps = con.prepareStatement(sql);
			// ps.setString(1, id); //?가 없어졌기 때문에 필요없음 삭제!
			System.out.println("3. SQL문 부품(객체)으로 만들어주기.");

			// 4. SQL문 mySQL로 보내기
			rs = ps.executeQuery();
			System.out.println("4. SQL문 mySQL로 보내기 성공.");
			while (rs.next()) { // 검색결과가 있는지 여부는 rs.next()
				// true이면 있다라는 의미, false이면 없다라는 의미
				// 1. 검색결과가 있으면,
				// System.out.println("검색결과 있음. 성공.");
				// 2. 각 컬럼에서 가져오자
				int no = rs.getInt(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String writer = rs.getString(4);

				// 검색결과를 검색화면 UI부분에 넣어주어야 함. (여기에jop넣으면 안됨)
				// 3. 가방을 만들자
				bag = new BbsVO();
				bag.setNo(no);
				bag.setTitle(title);
				bag.setContent(content);
				bag.setWriter(writer);

				// 4. list에 bag을 추가해주자.
				list.add(bag);
			}
			ps.close();
			rs.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		// return id, pw, name, tel은 XXXX! ==> 파이썬만 가능
		// return 뒤에는 반드시 여러 데이터를 묶어서 리턴해주어야 함 ==> 자바는 가방을 만들어줘야함
		
		// 검색결과가 있을 때는 bag에 데이터가 들어있음.
		// 검색결과가 없을 때는 bag에 무엇이 들어있나? null
		return list;
	}

	// 검색
	public BbsVO one(int NO) {

		ResultSet rs = null;

		BbsVO bag = null;

		try {
			// 1.mySQL과 연결한 부품 설정
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1.mySQL과 자바 연결할 부품 설정 성공.");

			// 2.mySQL에 연결해보자.
			String url = "jdbc:mysql://localhost:3306/multi";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("2. mySQL 연결 성공.");

			// 3.SQL문 부품(객체)으로 만들어주기
			String sql = "select * from BBS where NO = ? ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, NO);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기.");

			// 4.SQL문 mySQL로 보내기
			rs = ps.executeQuery(); // select의 결과는 <항목명+Row> 테이블!!
			System.out.println("4. SQL문 mySQL로 보내기 성공.");
			if (rs.next()) { // 테이블(rs)에서 있는지 확인해라
				System.out.println("검색결과 있음. 성공.");
				int no2 = rs.getInt(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String writer = rs.getString(4);
				System.out.println(no2 + " " + title + " " + content + " " + writer);

				bag = new BbsVO();
				bag.setNo(no2);
				bag.setTitle(title);
				bag.setContent(content);
				bag.setWriter(writer);
			} else {
				System.out.println("검색결과 없음. 성공.");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return bag;
	}

	// 삭제
	public int delete(int no) {
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

			// 3.SQL문 부품(객체)으로 만들어주기
			// 물음표 연산자 사용!(따옴표X)
			String sql = "delete from BBS where NO = ? "; // NO가 ?인(조건)것 삭제
			PreparedStatement ps = con.prepareStatement(sql); // PreparedStatement 가 SQL부품!!
			ps.setInt(1, no); // 만약 NO가 String이면: ps.setString(1, NO);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기.");

			// 4.SQL문 mySQL로 보내기
			result = ps.executeUpdate(); // insert, update, delete문만!! sql문 실행결과가 int
			System.out.println("4. SQL문 mySQL로 보내기 성공.");
			if (result == 1) {
				System.out.println("게시글 삭제 성공.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(result);
		return result;
	}

	// 수정
	public int update(BbsVO bag) {

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

			// 3.SQL문 부품(객체)으로 만들어주기
			// 물음표 연산자 사용!(따옴표X)
			String sql = "update bbs set content = ? where NO = ? ";
			PreparedStatement ps = con.prepareStatement(sql); // PreparedStatement
			ps.setString(1, bag.getContent());
			ps.setInt(2, bag.getNo());
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공.");

			// 4.SQL문 mySQL로 보내기
			result = ps.executeUpdate(); // insert, update, delete문만!! sql문 실행결과가 int
			System.out.println("4. SQL문 mySQL로 보내기 성공.");
			if (result == 1) {
				System.out.println("수정 성공.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// 작성
	public int insert(BbsVO bag) {

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
			// 물음표 연산자 사용!(따옴표X)
			String sql = "insert into bbs(title, content, writer) values (?, ?, ?)"; // 순서대로 입력받아온 값을 ?에 차례대로 넣어줌
			PreparedStatement ps = con.prepareStatement(sql); // PreparedStatement 가 SQL부품!!
			ps.setString(1, bag.getTitle());
			ps.setString(2, bag.getContent());
			ps.setString(3, bag.getWriter());
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공.");

			// 4. SQL문 mySQL로 보내기
			result = ps.executeUpdate(); // insert, update, delete문만!! sql문 실행결과가 int
			System.out.println("4. SQL문 mySQL로 보내기 성공.");
			if (result == 1) {
				System.out.println("작성 성공");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(result);
		return result;
	}

}