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
		<input class="mentor-control" type="text" placeholder="검색하기">
		<button id="mentro-bung" type="submit">검색</button>
	</form>

	<div class="mentor-wrapper">
	<div class="mentor-font">
	<label>멘토링 내용</label>
	<p>내용:&nbsp;${m.content}</p>
	</div>
	
	<div class="mentor-font"> 
	<img src="<%=request.getContextPath() %>/profile/${profile}" width="110" height="90">멘토 이름: ${m.mentor_Id}
	<br>
	<p>멘토 소개글:&nbsp;${m.intro}</p>
	<button id="mentro-bung2" type="button" onclick="location.href='<%=request.getContextPath()%>/mentor/mentorRegister'">멘토링신청</button>
	</div>
	</div>
</body>
</html>