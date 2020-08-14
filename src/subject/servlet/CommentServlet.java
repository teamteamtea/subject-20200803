package subject.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CommentDao;
import dao.boardDao;
import user.BoardList;
import user.Comment;

/**
 * Servlet implementation class CommentServlet
 */
@WebServlet("/comment")
public class CommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String ucomment =request.getParameter("ucomment");
		System.out.println("comment="+ucomment);
		
		//BoardList list =new BoardList(0, request.getParameter("uname"), request.getParameter("utext"), request.getParameter("btext"), LocalDateTime.now());
		Comment comm = new Comment(0,request.getParameter("uname"), ucomment, Timestamp.valueOf(LocalDateTime.now()));
		System.out.println(request.getParameter("uname"));
		CommentDao dao = new CommentDao();
		
		
		if(comm!=null) {
			Object o = null ;
			try {
				o= dao.insert(comm);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
			List<Comment> list=dao.select();
			
			request.setAttribute("comment", list);
		
		
		RequestDispatcher dispatcher =request.getRequestDispatcher("/lecture.jsp");
		dispatcher.forward(request, response);
	}

}















