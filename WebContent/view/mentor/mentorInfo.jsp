<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<form class="mentor-form" action="#">
		<input class="mentor-control" type="text" placeholder="검색하기">
		<button id="mentro-bung" type="submit">검색</button>
	</form>

	<div class="mentor-wrapper">
	<div class="mentor-font">
	<label>멘토링 내용</label>
	<p>내용: ${m.content}</p>
	</div>
	
	<div class="mentor-font"> 
	<img src="<%=request.getContextPath() %>/thumbnail/${c.thumbnail}" width="110" height="90" id="pic">멘토 이름: ${m.mentor_Id}
	<p>멘토 소개글:${m.intro}</p>
	<a href="#"><button type="submit">멘토링 신청</button></a>
	</div>
	</div>
</body>
</html>