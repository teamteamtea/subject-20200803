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
<style>
	.container{
	background-image: "/tempfiles/27/다운로드.jpg";
	background-size: "auto";

	
	}
	<style type="text/css">
.jumbotron{
background-image:url("C:\tempfiles\27\다운로드.jpg");
background-size:cover;
text-shadow:black 0.2em 0.2em 0.2em;
color:white;
}

</style>
</style>
<body>
<c:if test="${not empty dblogin }">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="main.jsp">non-anonymous lecture board</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">게시글 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          접속
        </a>
       <div class="dropdown-menu" aria-labelledby="navbarDropdown" name="search">
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
	<div class="col">
	
	<form action="${pageContext.request.contextPath }/boards" method="post">
		
			작성자:<input type="text" class="form-control" placeholder="작성자" name="uname">
			제목:<input type="text" class="form-control" placeholder="제목" name="utext"maxlength="60">
			내용:<textarea type="text" class="form-control" placeholder="내용을 입력하세요." name="boardtext"maxlength="2000" cols="20" rows="15"></textarea>
			
			<input type="submit" value="등록" class="btn btn-primary pull-right " />
		</form>
	</div>
</div>

<br/>

<footer style="background-color:#000000; color:#ffffff">
	<div class="container">
		<div class="row">
			<div class="col-sm-2" style="text-align:center;">
				<h5>Copyright &copy; 2020</h5><h5>익명이 아닌 박종휘</h5>
			</div>
			<div class="col-sm-4"><h5>만든사람 소개</h5><p>저는 익명이 아닌 사람중 하나 입니다. 그냥 아무것도 없고 크게 목표도 없이 코딩할려고 왔는데 되게 어렵네요..</p></div>
			<div class="col-sm-2"><h5 style="text-align:center;">네비게이션</h5>
				<div class="list-group">
				<a href="#" class="list-group-item">소개</a>
				<a href="#" class="list-group-item">강사소개</a>
				
				</div>	
			</div>
		</div>
	</div>
</footer>
</c:if>
<c:if test="${empty dblogin }">
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
 
  </div>
</nav>
<hr/>
<div class="container">
	<div class="rows">
		<div class="jumbotron">
			<a href="login.jsp"><h2>로그인이 안 되어 있습니다.</h2></a>
		<!-- 	<script >
			location.href="main.jsp";
			</script> -->
		</div>
	</div>
</div>
<footer style="background-color:#000000; color:#ffffff">
	<div class="container">
		<div class="row">
			<div class="col-sm-2" style="text-align:center;">
				<h5>Copyright &copy; 2020</h5><h5>익명이 아닌 박종휘</h5>
			</div>
			<div class="col-sm-4"><h5>만든사람 소개</h5><p>저는 익명이 아닌 사람중 하나 입니다. 그냥 아무것도 없고 크게 목표도 없이 코딩할려고 왔는데 되게 어렵네요..</p></div>
			<div class="col-sm-2"><h5 style="text-align:center;">네비게이션</h5>
				<div class="list-group">
				<a href="#" class="list-group-item">소개</a>
				<a href="#" class="list-group-item">강사소개</a>
				
				</div>	
			</div>
		</div>
	</div>
</footer>
</c:if>
</body>
</html>