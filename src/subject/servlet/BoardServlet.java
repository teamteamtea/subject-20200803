package subject.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDateTime;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.boardDao;
import user.BoardList;

/**
 * Servlet implementation class boardServlet
 */
@WebServlet("/boards")
public class BoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BoardServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @param bdate
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		boardDao dao = new boardDao();
		HttpSession session = request.getSession();
		String uname = request.getParameter("uname");
		String utext = request.getParameter("utext");
		String btext = request.getParameter("boardtext");
		// Board test = new Board("이름","제목","내용",LocalDateTime.now());
		BoardList board = new BoardList(0, uname, utext, btext, LocalDateTime.now());

		if (uname != null || utext != null || btext != null) {
			Object names = null;
			try {
				names = dao.insert(board);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("board", board);

		}
		if (board != null) {
			
				Object i = null;
				try {
					i = dao.select(board);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				request.setAttribute("select", i);
			}
			
		RequestDispatcher dispatcher =	request.getRequestDispatcher("/BoardMain.jsp");
		dispatcher.forward(request, response);
		}
		

	
	

		

	}

