package subject.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.boardDao;
import user.BoardList;
import user.User;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String tno = request.getParameter("tno");
		System.out.println("tno: "+ tno);
		
		String muname = request.getParameter("muname");
		String mutext = request.getParameter("mutext");
		String mbtext =request.getParameter("mboardtext");
		ResultSet rs = null;
		boardDao dao = new boardDao();
		BoardList list = new BoardList(0, muname, mutext, mbtext, LocalDateTime.now());

		List<BoardList> selectResult;

		if (list != null) {
			try {
				selectResult = dao.select(list);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		int result = dao.update(list, tno);
		
		Object userInfo = session.getAttribute("dblogin");

		/*
		 * if(userInfo != null) { System.out.println("=========== 유저 정보 ========");
		 * System.out.println(userInfo.toString());
		 * System.out.println("==========================="); }
		 */

		/* Object l=dao.update(list, userInfoo); */
		/* session.setAttribute("select", l); */
		
		if (result == 1) {
			RequestDispatcher dispatcher =request.getRequestDispatcher("/boards");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher =request.getRequestDispatcher("/modify.jsp");
			dispatcher.forward(request, response);
		}

	}

}
