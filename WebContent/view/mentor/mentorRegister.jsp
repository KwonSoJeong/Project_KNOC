<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/style/mentorRegister.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div id="mentor-me">
<h2 id ="mentor-hader">멘토링 등록</h2>
</div>

<div class="container" style="padding: 80px;">

		<form action="<%=request.getContextPath() %>/mentor/mentorRegisterPro" method="post">
		<!-- <form name="f" action="<%=request.getContextPath()%>" method="post"> -->
		
			<h4 id="center">멘토링 주제, 소개글, 내용을 자유롭게 써주세요~!</h4>
			<br><br>
			
			<div class="form-group">
				<label>멘토링 주제</label>
				<textarea class="form-control" rows="10" cols="40" placeholder="멘토링 주제 작성" name="input"></textarea>
			</div> 
			<br>
			
            <div class="form-group">
				<label>멘토 소개글 입력</label>
				<textarea class="form-control" rows="10" cols="40" placeholder="한 줄 소개글 작성" name="intro"></textarea>
			</div> 
			<br>
			
			<div class="form-group">
				<label>멘토링 내용 입력</label>
				<textarea class="form-control" rows="10" cols="60" placeholder="멘토링 내용에 대해 자세히 적어주세요"  name="content"></textarea>
			</div>
			
			<div id="center" style="padding: 10px;">
				<button type="submit" onclick="location.href='<%=request.getContextPath()%>/mentor/mentorRegister'">등록하기</button>
			</div>
		</form>
	</div>
</body>
</html>