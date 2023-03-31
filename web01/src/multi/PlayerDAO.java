package multi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class PlayerDAO {

	// list 선수 리스트 가져오기
	public ArrayList<PlayerVO> list() {
		ResultSet rs = null;

		ArrayList<PlayerVO> list = new ArrayList<>();

		PlayerVO bag = null;
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
			String sql = "select backnumber, name, team from player";
			PreparedStatement ps = con.prepareStatement(sql);
			// ps.setString(1, id); //?가 없어졌기 때문에 필요없음 삭제!
			System.out.println("3. SQL문 부품(객체)으로 만들어주기.");

			// 4. SQL문 mySQL로 보내기
			rs = ps.executeQuery();
			System.out.println("4. SQL문 mySQL로 보내기 성공.");
			while (rs.next()) { // 검색결과가 있는지 여부는 rs.next()

				// 1)한번에 이렇게 적어줄수 있음
				bag = new PlayerVO(); // 가방만들어서
				bag.setBacknumber(rs.getString("backnumber")); // 가방에다 쫙 넣자
				bag.setName(rs.getString("name"));
				bag.setTeam(rs.getString("team"));

				// 2) list에 bag을 추가해주자.
				list.add(bag);
			}
			ps.close();
			rs.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	// one 선수 상세정보 가져오기
	public PlayerVO one(String backnumber) {
		
		System.out.println(backnumber);// 검색결과가 null이 뜨는 경우에 입력값 id 출력해보기

		ResultSet rs = null;

		PlayerVO bag = null;
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
			String sql = "select * from player where backnumber = ? ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, backnumber);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기.");

			// 4. SQL문 mySQL로 보내기
			rs = ps.executeQuery();
			System.out.println("4. SQL문 mySQL로 보내기 성공.");
			if (rs.next()) { // 검색결과가 있는지 여부는 rs.next()
				System.out.println("검색결과 있음. 성공.");

				// 1)한번에 이렇게 적어줄수 있음
				bag = new PlayerVO();
				bag.setBacknumber(rs.getString("backnumber"));
				bag.setName(rs.getString("name"));
				bag.setHeight(rs.getString("height"));
				bag.setWeight(rs.getString("weight"));
				bag.setTeam(rs.getString("team"));
			} else {
				System.out.println("검색결과 없음. 성공.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(bag); // bag에 제대로 들어갔는지 체크
		return bag;
	}

	//insert 선수정보 추가하기
	public int insert(PlayerVO bag) {

		int result = 0;

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
			String sql = "insert into player values (?, ?, ?, ?, ?)"; // 순서대로 입력받아온 값을 ?에 차례대로 넣어줌
			PreparedStatement ps = con.prepareStatement(sql); // PreparedStatement 가 SQL부품!!
			// 2. 가방에서 값들을 하나씩 꺼내쓰세요.
			ps.setString(1, bag.getBacknumber());
			ps.setString(2, bag.getName());
			ps.setString(3, bag.getHeight());
			ps.setString(4, bag.getWeight());
			ps.setString(5, bag.getTeam());
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공.");

			// 4. SQL문 mySQL로 보내기
			result = ps.executeUpdate(); // insert, update, delete문만!! sql문 실행결과가 int
			System.out.println("4. SQL문 mySQL로 보내기 성공.");
			if (result == 1) {
				System.out.println("선수추가 성공");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(result);
		return result;
	}
	
	//delete 선수정보 삭제하기
	public int delete(String backnumber) {
		int result = 0;
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

			// 3.SQL문 부품(객체)으로 만들어주기
			String sql = "delete from player where backnumber = ? "; 
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, backnumber);
			System.out.println("3. SQL문 부품(객체)으로 만들어주기.");

			// 4.SQL문 mySQL로 보내기
			result = ps.executeUpdate();
			System.out.println("4. SQL문 mySQL로 보내기 성공.");
			if (result == 1) {
				System.out.println("선수정보 삭제 성공.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(result);
		return result;
	}

	//update 선수정보 수정하기
	public int update(PlayerVO bag) {

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
			String sql = "update player set name = ?, height = ?, weight = ? = ?, team = ? where backnumber = ? ";
			PreparedStatement ps = con.prepareStatement(sql); // PreparedStatement
			ps.setString(1, bag.getName());
			ps.setString(2, bag.getHeight());
			ps.setString(3, bag.getWeight());
			ps.setString(4, bag.getTeam());
			ps.setString(5, bag.getBacknumber());
			System.out.println("3. SQL문 부품(객체)으로 만들어주기 성공.");

			// 4.SQL문 mySQL로 보내기
			result = ps.executeUpdate(); // insert, update, delete문만!! sql문 실행결과가 int
			System.out.println("4. SQL문 mySQL로 보내기 성공.");
			if (result == 1) {
				System.out.println("선수 정보수정 성공.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
}
