package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class databaseUtil {

	public static Connection getconnection() {
		try {
		    String url="jdbc:mysql://localhost/subject?serverTimezone=Asia/Seoul";
		    String id="root";
		    String pw="rootpw";
		    Class.forName("com.mysql.cj.jdbc.Driver");
		    return DriverManager.getConnection(url, id, pw);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
		}
}
