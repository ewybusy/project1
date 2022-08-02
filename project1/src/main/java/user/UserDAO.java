package user;

import java.sql.Connection;
import java.sql.PreparedStatement;

import util.DatabaseUtil;

public class UserDAO {
	
	// 데이터베이스에서 데이터를 주고 받는 것 (DAO - 데이터접근객체)
	public int join(String userID, String userPassword) { // 회원가입
		String SQL = "INSERT INTO USER VALUES (?, ?)";
		try {
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			pstmt.setString(2, userPassword);
			return pstmt.executeUpdate(); // 성공적으로 회원가입 되면 1값 반환 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // DB오류시 -1 반환
	}

}
