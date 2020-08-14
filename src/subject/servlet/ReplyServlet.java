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
import dao.ReplyDao;
import user.Comment;
import user.Reply;

/**
 * Servlet implementation class ReplyServlet
 */
@WebServlet("/reply")
public class ReplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReplyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		//doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String replycomment =request.getParameter("replycomment");
		System.out.println("replycomment="+replycomment);
		
		//BoardList list =new BoardList(0, request.getParameter("uname"), request.getParameter("utext"), request.getParameter("btext"), LocalDateTime.now());
		Reply re = new Reply(0,request.getParameter("uname"), replycomment, Timestamp.valueOf(LocalDateTime.now()));
		System.out.println(request.getParameter("uname"));
		ReplyDao dao = new ReplyDao();
		
		
		if(re!=null) {
			
			try {
				int result= dao.insert(re);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
			List<Reply> reply=dao.select();
			
			request.setAttribute("reply", reply);
		
		
		RequestDispatcher dispatcher =request.getRequestDispatcher("/lecture.jsp");
		dispatcher.forward(request, response);
	}

}
