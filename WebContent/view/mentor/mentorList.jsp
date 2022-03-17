<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="<%=request.getContextPath() %>/resource/style/mentorlist.css">-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<style>
.mentor-dot{ 
	width: 20vw;
	height: 30vh;
	line-height:100px;
	background-color: rgb(211, 211, 211);
	font-size:15px;
	text-align:center;
	display:inline-block;
	margin-top: 3vh;
}
.dot-wrapper{
flex-wrap: wrap;
margin-top: 5vh;
text-align: center;
background-color: #ecebed;
height: 800px;
}

#border-bot{ 
    margin-top: 80px;
    margin-left: 240px;
    margin-bottom: 12px;
    width: 1286px;
}
#font{
margin-top: 3vh;
font-size: 24px;
border-bottom : solid 2px #B8E6E1; 
margin-left: 400px;
margin-right: 400px; 
}
.mtl-form{
	display: flex;
    width: 80.5vw;
    margin: 0px auto;
    justify-content: flex-end;
}
.form-control{
	width : 200px;
	height: 35px;
}
#bung{
	width : 100px;
	height: 35px;
	background-color: #B8E6E1;
	font-size : 13px;
	border:none;
	text-align:center;
	transform: translate(0, 1px);
	font-size: 15px;
}
button{
width : 100px;
height: 35px;
background-color: #B8E6E1;
font-size : 13px;
border:none;
text-align:center;
font-size: 15px;
}

a{
text-decoration: none ;
}
</style>

</head>
<body>
	<div id="border-bot">
		<h2 id ="font">멘토링</h2>
	</div>
	<form class="mtl-form" action="<%=request.getContextPath()%>/mentor/mentorList">
		<input class="form-control" type="text" placeholder="검색하기">
		<button id="bung" type="submit">검색</button>
	</form>

	<div class="dot-wrapper">
	<c:forEach var="m" items="${mt}">
	<div class="mentor-dot">
	<img src="<%=request.getContextPath() %>/profile/${profile}" width="100" height="80" id="pic">멘토 이름:&nbsp;${m.mentor_Id}
	<p>멘토링 주제:&nbsp;${m.input}</p>
	<a href="<%=request.getContextPath() %>/mentor/mentorInfo">내용보기</a>
	</div>
	</c:forEach>
</div>

<!-- 
<div class="mentor-dot">
	<img src="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp" width="100" height="80" id="pic">멘토 이름: 
	<p>소개글</p>
	<a href="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp">내용보기</a>
	</div>
	
	<div class="mentor-dot">
	<img src="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp" width="100" height="80" id="pic">멘토 이름:
	<p>소개글</p>
	<a href="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp">내용보기</a>
	</div>
	
	<div class="mentor-dot">
	<img src="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp" width="100" height="80" id="pic">멘토 이름:
	<p>소개글</p>
	<a href="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp">내용보기</a>
	</div>
	
	<div class="mentor-dot">
	<img src="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp" width="100" height="80" id="pic">멘토 이름:
	<p>소개글</p>
	<a href="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp">내용보기</a>
	</div>
	
	<div class="mentor-dot">
	<img src="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp" width="100" height="80" id="pic">멘토 이름:
	<p>소개글</p>
	<a href="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp">내용보기</a>
	</div>
	
	<div class="mentor-dot">
	<img src="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp" width="100" height="80" id="pic">멘토 이름:
	<p>소개글</p>
	<a href="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp">내용보기</a>
	</div>
	
	<div class="mentor-dot">
	<img src="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp" width="100" height="80" id="pic">멘토 이름: 
	<p>소개글</p>
	<a href="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp">내용보기</a>
	</div>
	
	<div class="mentor-dot">
    <img src="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp" width="100" height="80" id="pic">멘토 이름: 
    <p>소개글</p>
    <a href="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp">내용보기</a>
    </div> 
-->

</body>
</html>