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
	width: 450px;
	height: 350px;
	line-height:100px;
	background-color: #c0c0c0;
	font-size:15px;
	text-align:center;
	display:inline-block;
	margin-top: 3vh;
}
.dot-wrapper{
margin-top: 5vh;
text-align: center;
background-color: #ddd;
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
	<form class="mtl-form" action="#">
		<input class="form-control" type="text" placeholder="검색하기">
		<button id="bung" type="submit">검색</button>
	</form>
	<!-- 하영님! 간밤에 mentorList 화면 부를 때 오류가 나서 아래 내용 수정했습니다!
	 controller에서 멘토링 정보를 리스트로 불러오니까, 
	 멘토링 새로 등록하지 않으면 forEach 태그 내부의 내용은 우선 화면에 출력되지는 않을 겁니다! 
	 css 작업 다 마치신 뒤에 forEach 태그 이하의 내용은 지워주시면 되실 것 같습니다!
	 확인 하신 후에 이 주석은 지워주시면 감사하겠습니다! -->
	<div class="dot-wrapper">
	<c:forEach var="m" items="${mt}">
	<div class="mentor-dot">
	<img src="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp" width="100" height="80" id="pic">멘토 이름: ${m.mentor_Id}
	<p>${m.intro}</p>
	<a href="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp">내용보기</a>
	</div>
	</c:forEach>

	
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
	
    </div>
   
   	<!-- <div class="container">
		<ul class="pagination justify-content-center">
		
   <li class='page-item <c:if test="${startPage <= bottomLine}">  disabled </c:if>'>
   <a class="page-link" href="<%=request.getContextPath() %>/mentor/mentorlist?pageNum=${startPage-bottomLine}">Previous</a></li>
   
   <c:forEach var="i" begin="${startPage}" end="${endPage}">
   <li class='page-item <c:if test= "${i == pageInt}"> active </c:if>'> 
   <a class="page-link" href="<%=request.getContextPath() %>/mentor/mentorlist?pageNum=${i}">${i}</a></li>
   </c:forEach>
  
  <li class='page-item <c:if test="${endPage >= maxPage}"> disabled </c:if>'>
  <a class="page-link" href="<%=request.getContextPath() %>/mentor/mentorlist?pageNum=${startPage + bottomLine}">Next</a></li>
</ul> 
</div>
-->

</body>
</html>