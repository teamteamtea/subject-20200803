package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import jdbc.jdbcUtil;
import user.BoardList;
import user.User;
import util.databaseUtil;

public class boardDao {
	
	Connection conn=databaseUtil.getconnection();
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
/*	public int select() {
		
		String sql="select*from board";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			return 1;
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return -1;
		
	}*/

	public String date() {
		
		String sql="SELECT NOW()";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
			
		return " ";
	}
	public int insert(BoardList board) throws SQLException{
		
		String sql ="INSERT INTO board VALUES(nono,?,?,?,?)";
		
		try {
			System.out.println("a");
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1,board.getUname());
			pstmt.setString(2,board.getUtext());
			pstmt.setString(3, board.getBoard_text());
			pstmt.setTimestamp(4, Timestamp.valueOf(board.getBdate()));
			pstmt.executeUpdate();
			
		}catch(Exception e) {
	     e.printStackTrace();

		}finally {
			jdbcUtil.close(pstmt);
		}
		return 0;
		//데이터 베이스 오류
	}
	
	public int update(BoardList board, String tno) {
		
		String sql="UPDATE board SET uname=?,utext=?,board_text=? WHERE nono=?";
		
			try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, board.getUname());
			pstmt.setString(2, board.getUtext());
			pstmt.setString(3, board.getBtext());
			pstmt.setInt(4,Integer.parseInt(tno));
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public BoardList boardadd(ResultSet rs,BoardList board) throws SQLException {

		rs.getTimestamp("bdate").toLocalDateTime();
		//		return new BoardList(b.getUname(),b.getUtext(),b.getBtext(),b.getBdate());
		return new BoardList(rs.getInt("nono"),rs.getString("uname"),rs.getString("utext"),rs.getString("board_text"), rs.getTimestamp("bdate").toLocalDateTime().now());
		//return new BoardList(rs.getString("uname"),rs.getString("utext"),rs.getString("board_text"), LocalDateTime.now());
	}
	
	public int delete(BoardList board,String tno) {
		
		String sql="delete from board where nono=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,Integer.parseInt(tno));
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public int select2(BoardList list) {
		Connection conn=databaseUtil.getconnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		 
		
		String sql="select*from board where nono=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,list.getTno());
			rs=pstmt.executeQuery();
			if(rs.next()) {
				return 1;
			}else {
				return 0;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
		jdbcUtil.close(pstmt);
		jdbcUtil.close(rs);
		}
		return -1;
	}
	
	public List<BoardList> select(BoardList b) throws SQLException {

		Connection conn = databaseUtil.getconnection();
		PreparedStatement pstmt = null;

		ResultSet rs = null;

		String sql="SELECT*FROM board ORDER BY nono";

		try {

			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			List<BoardList> result = new ArrayList<BoardList>();

			while (rs.next()) {
              result.add(boardadd(rs, b));
			}
			return result;
			
		} finally {
			jdbcUtil.close(rs, pstmt);
		}
	}
	
	public List<BoardList> search(String menu,String word, BoardList b){
		
		Connection conn=databaseUtil.getconnection();
		PreparedStatement pstmt=null;
		
		
		
		try {
			String sql="SELECT * FROM board WHERE "+menu+" LIKE ?";
			pstmt=conn.prepareStatement(sql);
			
			
			pstmt.setString(1, "%" +word+ "%");
			rs=pstmt.executeQuery();
			
			List<BoardList> result = new ArrayList<BoardList>();
			
			while(rs.next()) {
				result.add(boardadd(rs, b));
			}
			return result;
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			jdbcUtil.close(pstmt);

		}
		return null;
	}
}














