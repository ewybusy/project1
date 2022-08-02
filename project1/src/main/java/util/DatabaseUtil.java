package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {
	
	// 실질적으로 db와 연동을 정의
	
	public static Connection getConnection() { // getconnection 함수를 다른 라이브러리에서도 사용하게끔 static
		try { // try-catch 오류가 났을떄 쉽게 처리 위해 사용 
			String dbURL = "jdbc:mysql://localhost:3306/project1";
			String dbID = "root";
			String dbPassword = "root";
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null; // 오류 발생시 null 반환
	}
}
