package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import jdbc.jdbcUtil;
import user.BoardList;
import user.Comment;
import util.databaseUtil;

	public class CommentDao {

	Connection conn=databaseUtil.getconnection();
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	public int insert(Comment com) throws SQLException{
		
		String sql ="INSERT INTO comment VALUES(?,?,?,?)";
		
		try {
			System.out.println("cc");
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,com.getTno());
			pstmt.setString(2,com.getUname());
			pstmt.setString(3,com.getUcomment());
			pstmt.setTimestamp(4, toTimestamp(com.getCdate()));
			pstmt.executeUpdate();
			
		}catch(Exception e) {
	     e.printStackTrace();

		}finally {
			jdbcUtil.close(pstmt);
		}
		return 0;
		//데이터 베이스 오류
	  }
	
	public List<Comment> select() {
		
		String sql="select * from comment ";
		Statement stmt= null;
		List<Comment> list =new ArrayList<Comment>();
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
		while(rs.next()) {
			Comment com1 =new Comment(rs.getInt("tno"),rs.getString("uname"), rs.getString("ucomment"), toDate(rs.getTimestamp("cdate")));
			list.add(com1); 
		}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}
	private Date toDate(Timestamp timestamp) {
		return new Date(timestamp.getTime());
	}
	private Timestamp toTimestamp(Date date) {
		return new Timestamp(date.getTime());
	}
	
	
	
}
