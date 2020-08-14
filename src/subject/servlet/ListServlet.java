package subject.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.boardDao;
import user.BoardList;

/**
 * Servlet implementation class ListServlet
 */
@WebServlet("/list")
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListServlet() {
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
		String menu=request.getParameter("menu");
		String word=request.getParameter("word");
		
		
		System.out.println("word"+word);
		System.out.println("menu"+menu);
		BoardList list=new BoardList(0, request.getParameter("uname"), request.getParameter("utext"), request.getParameter("btext"), LocalDateTime.now());
		
		boardDao dao = new boardDao();
		if(list!=null) {
			try {
				Object o=dao.select(list);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		List<BoardList> result =dao.search(menu, word, list);
		
		request.setAttribute("select", result);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("/BoardMain.jsp");
		dispatcher.forward(request, response);
		
	}

}









