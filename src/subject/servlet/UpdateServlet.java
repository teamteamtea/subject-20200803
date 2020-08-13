package subject.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import dao.boardDao;
import user.BoardList;
import util.databaseUtil;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/updates")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session =request.getSession();
		 String muname =request.getParameter("muname");
		 String mutext =request.getParameter("mutext");
		 String mbtext =request.getParameter("mboardtext");

		 boardDao dao =new boardDao();
		 BoardList list =new BoardList(0,muname,mutext,mbtext,LocalDateTime.now());

		 Object o =null;

		 if(list!=null){
		 	try {
				o=dao.select(list);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			session.setAttribute("namefinal", o);
		 }
		 
		 
		
		 
		 response.sendRedirect(request.getContextPath()+"/boards");
		
	}

}
