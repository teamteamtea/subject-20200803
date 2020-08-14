package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jdbc.jdbcUtil;
import jdbc.connection.ConnectionProvider;
import user.*;
import util.databaseUtil;

public class userDao {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	databaseUtil db = new databaseUtil();

	public userDao() {
		conn = db.getconnection();

	}

	public User2 login(String userID, String userPW) {

		String sql = "SELECT * FROM user WHERE userID = ? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(2).equals(userPW)) {
					
					return new User2(rs.getString(1), rs.getString(3));//로그인성공
			   }else {
					return null;//비밀번호 불일치
				}
				
			}
			return null;//아이디가없음
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcUtil.close(conn);
		}

		return null;
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
