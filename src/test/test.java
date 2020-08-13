package test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.boardDao;
import user.BoardList;
import util.databaseUtil;

@WebServlet("/test")
public class test extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp ) throws ServletException, IOException {
		Connection con = databaseUtil.getconnection();
		

		Date d = new Date();
		System.out.println(d);
		BoardList test = new BoardList( 0, "이름","제목","내용",LocalDateTime.now());
		System.out.println(test.toString());
		
		boardDao dao = new boardDao();
		
		try {
			dao.insert(test);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doGet(req, resp);
	}
	
}
