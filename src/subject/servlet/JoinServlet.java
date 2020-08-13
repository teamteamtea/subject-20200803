package subject.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.userDao;
import user.User;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/joins")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinServlet() {
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
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		userDao userdao =new userDao();
		HttpSession session =request.getSession();
		String id=request.getParameter("userID");
		String pw=request.getParameter("userPW");
		String name=request.getParameter("userName");
		String email=request.getParameter("userEmail");
		
		Object o =null;
		if(id!=null || pw!=null || name!=null || email!=null) {
			User user= new User(id, pw, name, email);
		o=userdao.insert(user);
		//session "info" attribute로 세팅
		session.setAttribute("info", o);
		RequestDispatcher dispatcher =request.getRequestDispatcher("/main.jsp");
		dispatcher.forward(request, response);
		}else {
			session.invalidate();
		}
		
		
	}

	/**
	 * @param user 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response, User user) throws ServletException, IOException {
		//회원가입
		
		
	
	}

}
