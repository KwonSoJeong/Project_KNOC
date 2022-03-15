<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/style/mentorRegister.css">
</head>
<body>
<div id="mentor-me">
<h2 id ="mentor-hader">멘토링 등록</h2>
</div>

<div class="container" style="padding: 80px;">
		<form name="f" action="<%=request.getContextPath()%>/mentor/mentorRegisterPro" method="post">
			<h4 id="center">자신에 대해 소개하고 멘토링 관련 내용을 자유롭게 써주세요~!</h4>
			<br><br>
            <div class="form-group">
				<label>멘토 소개글 입력</label>
				<textarea name="intro" class="form-control" rows="10" cols="40" placeholder="멘토 글 작성"></textarea>
			</div>
			<br>
			
			<div class="form-group">
				<label>멘토링 내용 입력</label>
				<textarea name="content" class="form-control" rows="10" cols="60" placeholder="멘토링 내용에 대해 자세히 적어주세요"></textarea>
			</div>
			
     <!-- 		<div class="form-group">
				<label>파일저장:</label> 
				<input type="file" class="form-control">
			</div> -->
			
			<div id="center" style="padding: 10px;">
				<a href=""><button type="submit" >입력</button></a>
			</div>
		</form>
	</div>
</body>
</html>