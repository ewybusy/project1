package user;

public class UserDTO {
	
	String userID;
	String userPassword;
	
	// getter 데이터 가져옴
	// setter 데이터 기록
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

}
