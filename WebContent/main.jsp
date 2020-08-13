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


<!-- 로그인이 안되었을시.... -->
<c:if test="${empty dblogin }">
<style type="text/css">
.jumbotron{
background-image:url("/images/27/어나니머스.png");
background-size:contain;
text-shadow:black 0.2em 0.2em 0.2em;
color:white;
}

</style>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="main.jsp">anonymous lecture board</a>
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
          <a class="dropdown-item" href="board.jsp">게시글쓰기</a>
            
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">made by 박종휘</a>
      </li>
    </ul>
  
  </div>
</nav>
<div class="container">
	<div class="jumbotron">
		<h1 class="text-center">익명의 강의 게시판</h1>
		<p class="text-center">이곳은 익명의 강의 게시판입니다. 강의와 커뮤니티 기능들을 제공하고 있습니다.</p>
		<p class="text-center"><a class="btn btn-primary btn-lg" href="lecture.jsp" role="button">강의</a></p>
	</div>
	<div class="row">
		<div class="col-md-4">
			<h4>이곳의 첫번째특징입니다.</h4>
			<p>이곳은 그냥 마음껏 그리고 아무나 가입할수 있고 마음껏 강의도 볼수 있고 의견을 마음껏 공유할수 있는 사이트입니다.</p>	
			<p><a class="btn btn-default" data-target="#modal" data-toggle="modal" href=""></a></p>	
		</div>
		<div class="col-md-4">
			<h4>이곳의 두번째특징입니다.</h4>
			<p>이곳은 표현의 자유를 존중해주며 다양한 의견을 수용하는 사이트 입니다. 하지만 허위사실은 지양합니다.</p>	
			<p><a class="btn btn-default"  href=""></a></p>	
		</div>
		<div class="col-md-4">
			<h4>이곳의 세번째특징입니다.</h4>
			<p>이곳은 개인의 생각을 적을수 있고   재미있는 사이트입니다.</p>	
			<p><a class="btn btn-default"  href=""></a></p>	
		</div>
	</div>
</div>
<footer style="background-color:#000000; color:#ffffff">
	<div class="container">
		<div class="row">
			<div class="col-sm-2" style="text-align:center;">
				<h5>만든사람 &copy; 2020</h5><h5>익명</h5>
			</div>
			<div class="col-sm-4"><h5>만든사람 소개</h5><p>저는 익명입니다. 그냥 아무것도 없고 크게 목표도 없이 코딩할려고 왔는데 되게 어렵네요..</p></div>
			<div class="col-sm-4"><h5 style="text-align:center;">사이트소개</h5>
				<div class="list-group">
				<a href="introduce.jsp" class="list-group-item">소개</a>
				<a href="teacher.jsp" class="list-group-item">강사소개</a>
					
				</div>	
			</div>
		</div>
	</div>
</footer>
</c:if>


<!-- 로그인이 되었을시... -->
<c:if test="${not empty dblogin }">
<style type="text/css">
.jumbotron{
background-image:url("/images/27/다운로드.jpg");
background-size:contain;
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
          <a class="dropdown-item" href="logout.jsp">로그아웃</a>
           <a class="dropdown-item" href="join.jsp">회원가입</a>
          <a class="dropdown-item" href="board.jsp">게시글쓰기</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">made by 박종휘</a>
      </li>
    </ul>
   
  </div>
</nav>
<div class="container">
	<div class="jumbotron">
		<h1 class="text-center">익명이아닌 강의 게시판</h1>
		<p class="text-center">이곳은 익명의아닌 강의 게시판입니다. 강의와 커뮤니티 기능들을 제공하고 있습니다.</p>
		<p class="text-center"><a class="btn btn-primary btn-lg" href="lecture.jsp" role="button">강의</a></p>
	</div>
	<div class="row">
		<div class="col-md-4">
			<h4>이곳의 첫번째특징입니다.</h4>
			<p>이곳은 그냥 마음껏 그리고 아무나 가입할수 있고 마음껏 강의도 볼수 있고 의견을 마음껏 공유할수 있는 사이트입니다.</p>	
			<p><a class="btn btn-default" data-target="#modal" data-toggle="modal" href=""></a></p>	
		</div>
		<div class="col-md-4">
			<h4>이곳의 두번째특징입니다.</h4>
			<p>이곳은 표현의 자유를 존중해주며 다양한 의견을 수용하는 사이트 입니다. 하지만 허위사실은 지양합니다.</p>	
			<p><a class="btn btn-default"  href=""></a></p>	
		</div>
		<div class="col-md-4">
			<h4>이곳의 세번째특징입니다.</h4>
			<p>이곳은 개인의 생각을 적을수 있고 서로 답변해 줄수 있는 사이트입니다.</p>	
			<p><a class="btn btn-default"  href=""></a></p>	
		</div>
	</div>
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
					
				</div>	
			</div>
		</div>
	</div>
</footer>
</c:if>

</body>
</html>



























