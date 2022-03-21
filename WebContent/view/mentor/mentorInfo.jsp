<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/style/mentorInfo.css">
</head>
<body>
	<div id="mentor-bot">
		<h2 id ="mentor-h2">멘토링</h2>
	</div>
	<form class="mentor-form" action="<%=request.getContextPath()%>/mentor/mentorInfo">
		<input class="mentor-control" name="" type="text" placeholder="검색하기">
		<button id="mentro-bung" type="submit">검색</button>
	</form>

	<div class="mentor-wrapper">
	<div class="mentor-font">
	<label>멘토링 내용</label>
	<p>내용:&nbsp;${m.content}</p>
	</div>
	
	<div class="mentor-font"> 
	<c:choose>
	<%--프로필 사진이 없으면 기본 프로필사진, 있으면 설정한 프로필 사진 --%>
	<c:when test="${profile!=null }"><img src="<%=request.getContextPath() %>/profile/${profile}" width="110" height="90">멘토 이름: ${m.mentor_Id}</c:when>
	<c:otherwise><img src="//www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=40" width="110" height="90">멘토 이름: ${m.mentor_Id}</c:otherwise>
	</c:choose>
	<br>
	<p>멘토 소개글:&nbsp;${m.intro}</p>
	<form action="<%=request.getContextPath()%>/mentor/mentoringEntry" method="post">
	<input type="hidden" name="mentoringId" value="${m.mentoring_Id }">
	<button id="mentro-bung2" type="submit">멘토링신청</button>
	</form>
	</div>
	</div>
</body>
</html>