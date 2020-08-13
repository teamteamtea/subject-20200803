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
<style type="text/css">
.container{
background-color: silver;
}

</style>
<body >
<c:if test="${not empty dblogin }">
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
          <a class="dropdown-item" href="board.jsp">게시글쓰기</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">made by 박종휘</a>
      </li>
    </ul>
  
  </div>
</nav>
<hr/>

<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">
						<span class="glyphicon glyphicon-tags">
						홍길동 강사
						</span>
					</h3>
				</div>
				<div class="panel-body">
					<div class="media-left">
					<a href="#">
					<img class="media-object" src="" alt="">
					</a>
					</div>
					<div class="media-body">
					<img alt="홍길동" src="/images/27/홍길동.jpg" width="90px" height="90px">
					<h4 class="media-heading">강사이름:홍길동</h4><br>
					이 강사는 좋은강의력과 더불어 좋은 이미지를 가지고 있는 강사입니다. c언어를 가르치고 있고 <br/>
					밤에는 의적활동을 합니다.
					<hr>
					</div>
				</div>
			</div>
</div>
<hr/>

<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">
						<span class="glyphicon glyphicon-tags">
						나일락 강사
						</span>
					</h3>
				</div>
				<div class="panel-body">
					<div class="media-left">
					<a href="#">
					<img class="media-object" src="" alt="">
					</a>
					</div>
					<div class="media-body">
					<img alt="나일락" src="/images/27/나일락.jpg" width="90px" height="90px">
					<h4 class="media-heading" text-color="blue">강사이름:나일락</h4><br>
					나일락 강사님은 자바(java)언어를 가르치고 있고 자바언어를 가르쳤었고 자바언어를 가르치고 있습니다.<hr/>
					</div>
				</div>
			</div>
</div>
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">
					
						<span class="glyphicon glyphicon-tags">
						백승은 강사
						</span>
					</h3>
				</div>
				<div class="panel-body">
					<div class="media-left">
					<a href="#">
					<img class="media-object" src="" alt="">
					</a>
					</div>
					<div class="media-body">
					<img alt="백승은" src="/images/27/백.jpg" width="90px" height="90px">
					<h4 class="media-heading" text-color="blue">강사이름:백승은</h4><br>
					백승은 강사님은 자바(java) 기반으로 한 jsp를 가르치고 있고, 자바 스프링을 가르 칠 예정입니다.<hr/>
					</div>
				</div>
			</div>
</div>
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">
					
						<span class="glyphicon glyphicon-tags">
						나동빈 강사
						</span>
					</h3>
				</div>
				<div class="panel-body">
					<div class="media-left">
					<a href="#">
					<img class="media-object" src="" alt="">
					</a>
					</div>
					<div class="media-body">
					<img alt="나동빈" src="/images/27/yoda.jpg" width="90px" height="90px">
					<h4 class="media-heading" text-color="blue">강사이름:나동빈</h4><br>
					나동빈 강사님은 유튜브 채널 <b>'동빈나'</b>채널을 운영 중이시며 다양한 대회 수상경력이 있습니다.<hr/>
					</div>
				</div>
			</div>
</div>
<hr/>
<footer style="background-color:#000000; color:#ffffff">
	<div class="container1">
		<div class="row">
			<div class="col-sm-2" style="text-align:center;">
				<h5>만든사람 &copy; 2020</h5><h5>익명이 아닌 박종휘</h5>
			</div>
			<div class="col-sm-4"><h5>만든사람 소개</h5><p>저는 익명이 아닌 사람중 하나 입니다. 그냥 아무것도 없고 크게 목표도 없이 코딩할려고 왔는데 되게 어렵네요..</p></div>
			<div class="col-sm-2"><h5 style="text-align:center;">사이트소개</h5>
				<div class="list-group">
				<a href="#" class="list-group-item">소개</a>
				<a href="#" class="list-group-item">강사소개</a>
				<a href="#" class="list-group-item">강의</a>	
				</div>	
			</div>
		</div>
	</div>
</footer>
</c:if>
<c:if test="${empty dblogin}">
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
	<div class="container">
		<div class="rows">
			<div class="jumbotron">
				<a href="login.jsp"><h2>로그인이 안되어 있습니다.</h2></a>
			</div>
		</div>
	</div>

</c:if>
</body>
</html>