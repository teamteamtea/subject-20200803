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

import com.sun.corba.se.impl.ior.NewObjectKeyTemplateBase;
import com.sun.jndi.url.rmi.rmiURLContext;

import dao.boardDao;
import user.BoardList;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/deletes")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
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
		
		//String uname=(String) request.getAttribute("deletebtn");
		
		boardDao dao =new boardDao();
		
		BoardList uname =new BoardList(0, request.getParameter("uname"), request.getParameter("utext"), request.getParameter("btext"), LocalDateTime.now());
		
		if(uname!=null) {
			
			Object o = null;
			try {
				o = dao.select(uname);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("o", o);
		}
		if(request.getAttribute("o")==null) {
			Object aa =dao.delete(uname);
		}
		
		response.sendRedirect(request.getContextPath()+"/BoardMain");
		/*RequestDispatcher dispatcher =request.getRequestDispatcher("/BoardMain.jsp");
		dispatcher.forward(request, response);*/
	}

}






