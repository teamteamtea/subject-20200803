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
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li>
    </ul>
    
  </div>
</nav>
 <div class="container">
	<div class="col"></div>
		<div class="col">
			<div class="jumbotron" style="padding-top: 20px;" align="center">
			<form action="${pageContext.request.contextPath }/joins" method="post">
				<h2 style ="text-align:center">회원가입 화면</h2>
				<div class="form-group">
					아이디:<input type="text" class="form-control" placeholder="아이디를 입력하세요." name="userID" maxlength="20">
				</div>
				<div class="form-group">
					비번:<input type="password" class="form-control" placeholder="비밀번호를 입력하세요." name="userPW" maxlength="20">
				</div>
				
				<div class="form-group">
					이름:<input type="text" class="form-control" placeholder="성함을 입력하세요." name="userName" maxlength="20">
				</div>
				<div class="form-group">
					이메일:<input type="email" class="form-control" placeholder="이메일 주소를 입력히세요." name="userEmail" maxlength="20">
				</div>
				<div class="custom-control custom-radio custom-control-inline">
   				<input type="radio" id="customRadioInline1" name="mail" class="custom-control-input">
  				<label class="custom-control-label" for="customRadioInline1">남성</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
 				 <input type="radio" id="customRadioInline2" name="femail" class="custom-control-input">
  					<label class="custom-control-label" for="customRadioInline2">여성</label>
				</div>
				<input type="submit" class="btn btn-primary form-control" value="회원가입" name=>
			</form>
			</div>		
		</div>
	<div class="col"></div>
	
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