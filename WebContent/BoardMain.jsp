<%@page import="java.time.LocalDateTime"%>
<%@page import="user.BoardList"%>
<%@page import="dao.boardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>

<%-- <script>
document.getElementById('delete').onclick = <%=request.getAttribute("update") %>
</script> --%>

</head>
<body>


	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="main.jsp">anonymous lecture board</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#"> <span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="#"></a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> 접속 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="login.jsp">로그인</a> 
						<a class="dropdown-item" href="join.jsp">회원가입</a> 
						<a class="dropdown-item" href="board.jsp">게시판</a>
					</div>
					</li>
				<li class="nav-item"><a class="nav-link disabled" href="#"
					tabindex="-1" aria-disabled="true">made by 박종휘</a></li>
			</ul>
			<!--    <DIV class='aside_menu'>
  <FORM name='form' method='GET' action="/BoardMain.jsp">
    <ASIDE style='float: right;'>
      
      <input type='text' name='search' value='' placeholder="특수문자는 사용할수 없습니다.">
      <button type='submit'>검색</button>    
       <button type='button' onclick="window.open('./create_form.jsp', '', 'width=700, height=630'); return false;">등록</button>
    </ASIDE> 
  </FORM>
  <DIV class='menu_line' style='clear: both;'></DIV>
</DIV> -->

			<form class="form-inline my-2 my-lg-0" action="${pageContext.request.contextPath }/list">
				<SELECT name="menu">
					<!-- 검색 컬럼 -->
					
					<OPTION value='uname'>작성자</OPTION>
					<OPTION value='utext'>제목</OPTION>
					<OPTION value='board_text'>내용</OPTION>
				</SELECT> <input class="form-control mr-sm-2" type="search"
					placeholder="검색하세요." aria-label="Search" name="word">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
			</form>
		</div>
	</nav>

	<h4>게시글 목록</h4>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>글번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>내용</th>
				<th>날짜</th>
				<th cols="4">변경하기</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach var="board" items="${select}">
				<tr>
					<td><div class="alert alert-primary">${board.tno }</div></td>
					<td>${board.uname }</td>
					<td>${board.utext }</td>
					<td>${board.btext }</td>
					<td>${board.bdate }</td>
					<td><a href="modify.jsp?tno=${board.tno }"><button
								class="btn btn-primary">수정</button></a></td>
					<td><a href="delete.jsp?tno=${board.tno }"><button
								class="btn btn-danger">삭제</button></a></td>
				</tr>
			</c:forEach>



		</tbody>
	</table>
	
	<div align="center">
		<a href="board.jsp"><h1>게시글쓰기</h1></a>
	</div>

	<footer style="background-color: #000000; color: #ffffff">
		<div class="container">
			<div class="row">
				<div class="col-sm-2" style="text-align: center;">
					<h5>만든사람 &copy; 2020</h5>
					<h5>익명</h5>
				</div>
				<div class="col-sm-4">
					<h5>만든사람 소개</h5>
					<p>저는 익명입니다. 그냥 아무것도 없고 크게 목표도 없이 코딩할려고 왔는데 되게 어렵네요..</p>
				</div>
				<div class="col-sm-4">
					<h5 style="text-align: center;">사이트소개</h5>
					<div class="list-group">
						<a href="introduce.jsp" class="list-group-item">소개</a> <a
							href="teacher.jsp" class="list-group-item">강사소개</a>

					</div>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>