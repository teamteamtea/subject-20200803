package user;

import dao.userDao;

public class User2 {

	private String userID;
	private String userName;
	public User2(String userID, String userName) {
		this.userID=userID;
		this.userName=userName;
		
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	
	
	
	
}
