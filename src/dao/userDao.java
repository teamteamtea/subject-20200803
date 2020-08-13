package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jdbc.jdbcUtil;
import jdbc.connection.ConnectionProvider;
import user.User;
import util.databaseUtil;

public class userDao {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	databaseUtil db = new databaseUtil();

	public userDao() {
		conn = db.getconnection();

	}

	public int login(String userID, String userPW) {

		String sql = "SELECT userPW FROM user WHERE userID = ? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPW)) {
				return 1;//로그인성공
			   }else {
					return 0;//비밀번호 불일치
				}
				
			}
			return -1;//아이디가없음
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcUtil.close(conn);
		}

		return -2;
		// 데이터베이스 오류
	}

	public int insert(User user) {
		System.out.println("inserting1");
		String sql = "INSERT INTO user VALUES(?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPW());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserEmail());
			pstmt.executeUpdate();
			System.out.println("inserting");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcUtil.close(conn);
		}
		return -1;

	}

	public User delete(User user) {

		String sql = "DELETE FROM user WHERE userID=? AND userPW=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPW());
			rs = pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcUtil.close(conn);
			jdbcUtil.close(pstmt);
		}
		return null;

	}

	public User update(User user) {

		String sql = "UPDATE user SET userID=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserID());
			rs = pstmt.executeQuery();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcUtil.close(conn);
			jdbcUtil.close(rs);
		}

		return user;

	}

}
