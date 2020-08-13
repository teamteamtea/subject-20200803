<%@page import="user.BoardList"%>
<%@page import="user.BoardList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<style type="text/css">
.jumbotron{

background-image:url("C:\tempfiles\27\다운로드.jpg");
background-size:cover;
text-shadow:black 0.2em 0.2em 0.2em;
color:white;
}

</style>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="main.jsp">non-anonymous lecture board</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#"> <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          접속
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="login.jsp">로그인</a>
          <a class="dropdown-item" href="join.jsp">회원가입</a>
          <a class="dropdown-item" href="board.jsp">게시판</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">made by 박종휘</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h5 class="panel-title">
						<span class="glyphicon glyphicon-tags">
						</span>
					</h5>
				</div>
				<div class="panel-body">
					<div class="media">
						<div class="medai-left">
							<a href="#">
								<img alt="댓글목록" src="/images/27/좋음.jpg" width="1000px" height="500px">
							</a>
						</div>
						<div class="media-body">
							<h4 class="heading"></h4>
						</div>
					</div>
				</div>
				<hr/>
				
			
			<!-- ${pageContext.request.객체명}-->
			<h4>댓글 목록</h4>
				<hr/>	 
				 <table class="table">
					<thead>
					<tr>
						<th>글번호</th>
						<th>작성자</th>
						<th>제목</th>
						<th>내용</th>
						<th>날짜</th>
					</tr>
					</thead>
					<c:forEach var="i" items="${not empty board } %>"> 
					<tbody>
						<tr>
							<td></td>
							<td>${i.uname}</td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</c:forEach>		
					</tbody>
			</div>
		</div>
	</div>
</div>

<!-- 답글기능 -->
<div class="container">
	<form action="" method="post" class="form-inlione mt-3">
	<h1>답글:</h1>
	<textarea rows="10" cols="30" name="reply" class="form-control mx-1 mt-2" placeholder="내용을 입력하세요."></textarea>
		
		<a class="btn btn-primary mx-100 mt-5" data-toggle="modal" href="#registermodal">등록하기</a>
	</form>
</div>
<footer style="background-color:#000000; color:#ffffff">
	<div class="container">
		<div class="row">
			<div class="col-sm-2" style="text-align:center;">
				<h5>만든사람 &copy; 2020</h5><h5>익명이 아닌 박종휘</h5>
			</div>
			<div class="col-sm-4"><h5>만든사람 소개</h5><p>저는 익명이 아닌 사람중 하나 입니다. 그냥 아무것도 없고 크게 목표도 없이 코딩할려고 왔는데 되게 어렵네요..</p></div>
			<div class="col-sm-2"><h5 style="text-align:center;">사이트소개</h5>
				<div class="list-group">
				<a href="introduce.jsp" class="list-group-item">소개</a>
				<a href="teacher.jsp" class="list-group-item">강사소개</a>
				<a href="lecture.jsp" class="list-group-item">강의</a>	
				</div>	
			</div>
		</div>
	</div>
</footer>
</body>
</html>