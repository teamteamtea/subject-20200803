package user;

import dao.userDao;

public class User {

	private String userID;
	private String userPW;
	private String userName;
	private String userEmail;
	
	
	
	public User(String userID, String userPW, String userName, String userEmail) {
		this.userID=userID;
		this.userPW=userPW;
		this.userName=userName;
		this.userEmail=userEmail;
		
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserPW() {
		return userPW;
	}

	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	
	
	
	
}
