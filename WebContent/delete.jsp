<%@page import="java.time.LocalDateTime"%>
<%@page import="subject.servlet.BoardServlet"%>
<%@page import="user.BoardList"%>
<%@page import="dao.boardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
     <%@page import="java.io.*" %>
  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <%
request.setCharacterEncoding("utf-8");
String deleteno =request.getParameter("tno");
System.out.println("deleteno"+deleteno);
boardDao dao =new boardDao();

BoardList list= new BoardList(0,request.getParameter("uname"),request.getParameter("utext"),request.getParameter("btext"),LocalDateTime.now());

if(list!=null){
int delete =dao.delete(list,deleteno);

}
response.sendRedirect(request.getContextPath()+"/boards");
/* RequestDispatcher dispatcher =request.getRequestDispatcher("/boards");
dispatcher.forward(request, response); */


/* if (delete == 1) {
	
	RequestDispatcher dispatcher =request.getRequestDispatcher("/boards");
	dispatcher.forward(request, response);
} else {
	PrintWriter script =response.getWriter();
	script.println("<script>");
	script.println("alert(삭제에 실패하였습니다.)");
	script.println("history.back(-1)");
	script.println("</script>");
} */
%> 
 
<body>

		<input type="number" name="tno" value="${param.tno }" hidden="hidden"/>
	
</body>
</html>