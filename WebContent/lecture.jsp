<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="java.sql.*" %>
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
<c:if test="${not empty dblogin }">
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
<hr>
	<div class="container">
		<div class="row">
			<ul class="list-group" >
				<a href="https://www.youtube.com/watch?v=flszoDfgwjc&list=PLiZvlxkcLhakQwbPjkyfuHFy1IVG-VXrP" class="list-group-item active">c언어</a>
				<a href="https://www.youtube.com/watch?v=jdTsJzXmgU0&list=PLuHgQVnccGMCeAy-2-llhw3nWoQKUvQck" class="list-group-item">자바(java)</a>
				<a href="https://www.youtube.com/watch?v=drCj2k50j_k&list=PLq8wAnVUcTFVOtENMsujSgtv2TOsMy8zd" class="list-group-item">jsp</a>
				<a href="https://www.youtube.com/watch?v=c2mpe9Xcp0I&list=PLGPF8gvWLYyrkF85itdBHaOLSVbtdzBww" class="list-group-item">파이썬</a>
			</ul>
			<img src="/images/27/로고.png" alt="자바" width="270px" height="200px">
			<img src="/images/27/c언어.png" alt="c언어" width="270px" height="200px">
			<img src="/images/27/파이썬.png" alt="파이썬" width="270px" height="200px">
		</div>
		
			
		
		
	<div class="row">
		<div class="embed-responsive embed-responsive-16by9">
			<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/=d9RqiaILIh0"></iframe>
		</div>
	
</div>
</div>
<hr>

<left>
<h2> 댓글작성 </h2> 
 <form action="${pageContext.request.contextPath }/comment" method="get" >
 <input type="text" name="uname" id="" hidden="hidden" value="${dblogin.userName }"/>
<textarea rows="5" cols="120" name="ucomment"></textarea>
			<input type = "submit" value = "글쓰기" > &nbsp;&nbsp;
            <input type = "reset" value = "다시작성"> &nbsp;&nbsp;
</form>
<hr/>
</left>

<center><a href="http://localhost:8888/subject/comment?uname=seoul&ucomment=">댓글목록보기</a> </center>


	<table class="table table-hover" width="100px" >
	<thead>
		<tr>
			<th>댓글</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="comment" items="${comment }">
		<tr class="hide">
			<td><h2>${comment.ucomment}</h2><br/> <a href="reply.jsp">답글 </a>
			
		</tr>
</c:forEach>
		</tbody>
	</table>

<div align ="right">
<table class="table table-hover" width="100px" >
	<thead>
		<tr>
			<th>댓글</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="reply" items="${reply }">
		<tr class="hide">
			<td><h2>${reply.replycomment}</h2><br/> 
		</tr>
		</tbody>
</c:forEach>
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
</c:if>
<c:if test="${empty dblogin}">
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
<hr/>
	<c:if test="${empty dblogin }">
	<div class="container">
		<div class="rows">
			<div class="jumbotron">
			<a href="login.jsp"><h3>로그인이 안되어 있습니다.</h3></a>
			</div>
		</div>
	</div>
</c:if>
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
</c:if>

</body>
</html>