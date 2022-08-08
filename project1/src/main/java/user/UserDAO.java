package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

// 회원관리 관련 DAO

public class UserDAO {
	
//	private Connection conn;
//	private PreparedStatement pstmt;
//	private ResultSet rs;
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	// 추후에는 DataBaseUtil같은 경우로 따로 만들 수 있도록 한다.
	// AWS 로그인 설정 
	// user,bbs 따로가 아니고 sql 한 프로젝트 안에 같이 쓸 수 있도록 한다.
	public UserDAO() {
		String dbURL = "jdbc:mysql://database-1.cjdkyisyys3a.ap-northeast-2.rds.amazonaws.com:3306/user";
		String dbID = "admin";
		String dbPassword = "TQ1s13P6XCa";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPassword FROM user WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs  = pstmt.executeQuery();
			if (rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1; // 로그인 성공
				}
				else
					return 0; // 비밀번호 불일치
			}
			return -1; // 아이디가 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // DB 오류
	}
	
	public int join(User user) {
		String SQL = "insert into user values(?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // DB 오류시
	}

}
