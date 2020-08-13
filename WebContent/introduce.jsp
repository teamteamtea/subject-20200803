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
color:black;
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
<div class="jumbotron" id="jumbo1">
	<h1>사이트 소개</h1>
	<hr/>
	<h3 class="alert alert-primary"><b>1.이 사이트를 만든이유?</b></h3>
	<p class="alert alert-light">이 사이트는 강의를 들을수 있고 다양한 의견을 수용하기 위해서 만들었습니다.</p>
	</div>
	<hr/>
	<div class="jumbotron" id="jumbo2">
	<h3 class="alert alert-primary"><b>2.이 사이트의 개요?</b></h3>
	<p class="alert alert-light">선생님 께서 과제를 내주셨기에 어떻게 만들면 좋고 어떤 주제로 만들까 고민을 하다가 <br/>
	이 사이트를 만들게 되었습니다.</p>
	</div>
	<hr/>
	<div class="jumbotron" id="jumbo3">
	<h3 class="alert alert-primary"><b>3.이 사이트의 목록</b></h3>
	<p class="alert alert-light">강의보기 , 게시판 등 이 있습니다.</p>
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
</body>
</html>