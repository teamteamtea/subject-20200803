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
import user.*;

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
		// 로그인 처리
		
		request.setCharacterEncoding("utf-8");
		userDao userdao = new userDao();
		HttpSession session = request.getSession();

		String id = request.getParameter("userID");
		String pw = request.getParameter("userPW");

/*		if(userdao.login(id, pw)>0){
			
			PrintWriter out =response.getWriter();   
	        out.print("<script>");
	        out.print("alert('로그인 성공.');");  
	        out.print("location.href='main.jsp';");        
	        out.print("</script>");
	     }else{
	    	 PrintWriter out =response.getWriter(); 
	        out.print("<script>");
	        out.print("alert('로그인이 정상적으로 완료되지 않았습니다.');");  
	        out.print("history.back();");          
	        out.print("</script>");
	    }*/
		User2 dblogin = null;
		if (id != null) {
			dblogin = userdao.login(id, pw);
			if(dblogin != null) {
				session.setAttribute("dblogin", dblogin);

			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);

			}
		}else {
			
		}
		

		RequestDispatcher dispatcher = request.getRequestDispatcher("main.jsp");
		dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response, Connection conn)
			throws ServletException, IOException {
		// 로그인 처리...

	}
}
