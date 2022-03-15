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
	<div id="border-pin">
		<h2 id="font">멘토링</h2>
	</div>
	<div class="center">
	<div class="item-wrap">
	<div class="card">
	<h3>멘토링 내용</h3>
	<!-- 멘토링 내용 -->
	<p>${m.content}</p>
    </div>
	</div>
	</div>

	<div class="fnete">
	<div class="card">
	<img src="" alt="">
	<h3>멘토 프로필</h3>
	<div class="row">
	<div class="col-3">
	<img src="" width="100" height="120" id="pic">
	<br> 멘토 이름: ${m.mentoring_id}
	<div class="card-chat">
	<div class="chat">
	<button type="submit">멘토링 신청</button>
	</div>
	</div>
	</div>
	<div class="card-info">
	<div class="user-wrap">
	<!-- 멘토링 내용 -->
	<p>${m.content}</p>
	</div>
	</div>
	</div>
	</div>
	</div>
</body>
</html>