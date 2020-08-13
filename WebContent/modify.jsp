<%@page import="java.time.LocalDateTime"%>
<%@page import="user.BoardList"%>
<%@page import="dao.boardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>





<body>

<form action="${pageContext.request.contextPath}/updates" method="post">
작성자:<input type="text" class="form-control" placeholder="작성자" name="muname"><br/><hr/>
			제목:<input type="text" class="form-control" placeholder="제목" name="mutext"maxlength="60"><br/><hr/>
			내용:<br/><textarea type="text" class="form-control" placeholder="내용을 입력하세요." name="mboardtext"maxlength="2000" cols="20" rows="15"></textarea><hr/>
			
			<input type="submit" value="등록" class="btn btn-primary pull-right" />
			</form>


<%-- <div class="container">
	<div class="col">
	<form action="${pageContext.request.contextPath }/updates" method="post"> --%>
		
			
	<!-- 	</form>
	</div>
</div> -->
</body>
</html>