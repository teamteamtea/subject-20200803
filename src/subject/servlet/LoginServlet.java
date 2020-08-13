package subject.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import dao.userDao;
import sun.rmi.server.Dispatcher;
import util.databaseUtil;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/logins")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		//로그인 처리
		
		userDao userdao =new userDao();
		HttpSession session =request.getSession();
		
		
				
		
		String id =request.getParameter("userID");
		String pw=request.getParameter("userPW");
		
		if(id!=null) {
			Object o =userdao.login(id, pw);
				session.setAttribute("dblogin", o);
		}
			
			
		
		RequestDispatcher dispatcher =request.getRequestDispatcher("main.jsp");
		dispatcher.forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response,Connection conn) throws ServletException, IOException {
		//로그인 처리...
		
		
		
	}
}
