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
import user.Comment;
import user.Reply;
import util.databaseUtil;

public class ReplyDao {
	Connection conn=databaseUtil.getconnection();
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	public int insert(Reply re) throws SQLException{
		
		String sql ="INSERT INTO reply VALUES(?,?,?,?)";
		
		try {
			System.out.println("cc");
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,re.getTno());
			pstmt.setString(2,re.getRname());
			pstmt.setString(3,re.getRcomment());
			pstmt.setTimestamp(4, toTimestamp(re.getRdate()));
			pstmt.executeUpdate();
			
		}catch(Exception e) {
	     e.printStackTrace();

		}finally {
			jdbcUtil.close(pstmt);
		}
		return 0;
		//데이터 베이스 오류
	  }
	
	public List<Reply> select() {
		
		String sql="select * from comment ";
		Statement stmt= null;
		List<Reply> list =new ArrayList<Reply>();
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
		while(rs.next()) {
			Reply re =new Reply(rs.getInt("tno"),rs.getString("rname"), rs.getString("rcomment"), toDate(rs.getTimestamp("rdate")));
			list.add(re); 
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
