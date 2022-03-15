<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/style/mentorlist.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resource/style/mentorlist.css">

</head>
<body style="padding-top: 70px;">
	<div class="mtl-wrapper"> 
		<div class="mtl-fsfc">멘토링</div>
		<div class="mtl-bor-bot"></div>

		<form class="mtl-form" action="#">
			<input class="mtl-form-control mtl-form-content" type="text"
				placeholder="검색하기">
			<button id="bung" type="submit">검색</button>
		</form>
	</div>
	
<c:forEach var="mt" items="${mt}">  <!-- 리스트 불러오기 --> 
<!-- @@css 설정으로 인해 리스트업을 위한 forEach가 적용이 안됨@@ -->
	<div class="center-col">
		<div class="center">
			<div class="item-wrap">
				<div class="mtl-card">
					<img src="" alt="">
					<h4>멘토링 상세정보</h4>
					<div class="row">
						<div class="mtl-col-3">
							<img src="" width="100" height="120"><br> 멘토 이름: ${mt.mentor_Id}
						</div>
						<div class="mtl-center">
							<p class="mtl-center">${mt.intro}</p>
						</div>
						<div class="card-info">
							<div class="user-wrap"></div>
						</div>
						<div class="mtl-center">
						<div class="chat">
						<a href="<%=request.getContextPath()%>/view/mentor/mentorInfo.jsp"><button>내용보기</button></a>
						</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</c:forEach>


            
	
	<!-- 주석 -->
	<!-- <div class="center-col">
	<div class="center">
		<div class="item-wrap">
		<div class="mtl-card">
		<img src="" alt="">
		<h4>멘토링 상세정보</h4>
		<div class="row">
		<div class="mtl-col-3">
		<img src="" width="100" height="120"><br>
		멘토 이름: 000 
		</div> 
		<div class="mtl-center">
		<p class="mtl-center">웹사이트 디자인 강의 멘토링 하고 있습니다</p>
		</div>
		<div class="card-info">
		<div class="user-wrap">
		</div>
		</div>
		<div class="mtl-center">
		<div class="chat">
		<a href="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp"><button>내용보기</button></a>
		</div>
		</div>
		</div>
		</div>
		</div>
	</div>
	</div>
	
	
	<div class="fnete">
		<div class="mtl-card">
		<img src="" alt="">
		<h4>멘토링 상세정보</h4>
		<div class="row">
		<div class="mtl-col-3">
		<img src="" width="100" height="120" id="pic"><br>
		멘토 이름: 000
		</div>
		<br>
		<p class="mtl-center">웹사이트 디자인 강의 멘토링 하고 있습니다</p>
		<div class="card-info">
		<div class="user-wrap">
		</div>
		</div>
		<div class="mtl-center">
		<div class="chat">
		<a href="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp"><button>내용보기</button></a>
		</div>
		</div>
		</div>
		</div>
	</div>
	
	
	<div class="ingte">
		<div class="mtl-card">
		<img src="" alt="">
		<h4>멘토링 상세정보</h4>
		<div class="row">
		<div class="mtl-col-3">
		<img src="" width="100" height="120" id="pic"><br>
		멘토 이름: 000
		</div>
		<br>
		<p id = "mtl-center">웹사이트 디자인 강의 멘토링 하고 있습니다</p>
		<div class="card-info">
		<div class="user-wrap">
		</div>
		</div>
		<div class="mtl-center">
		<div class="chat">
		<a href="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp"><button>내용보기</button></a>
		</div>
		</div>
		</div>
		</div>
	</div>
	
	<div class="sing">
		<div class="mtl-card">
		<img src="" alt="">
		<h4>멘토링 상세정보</h4>
		<div class="row">
		<div class="mtl-col-3">
		<img src="" width="100" height="120" id="pic"><br>
		멘토 이름: 000
		</div>
		<br>
		<p class="mtl-center">웹사이트 디자인 강의 멘토링 하고 있습니다</p>
		<div class="card-info">
		<div class="user-wrap">
		</div>
		</div>
		<div class="mtl-center">
		<div class="chat">
		<a href="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp""><button>내용보기</button></a>
		</div>
		</div>
		</div>
		</div>
	</div>
	
	
	<div class="hello">
		<div class="mtl-card">
		<img src="" alt="">
		<h4>멘토링 상세정보</h4>
		<div class="row">
		<div class="mtl-col-3">
		<img src="" width="100" height="120" id="pic"><br>
		멘토 이름: 000
		</div>
		<br>
		<p class="mtl-center">웹사이트 디자인 강의 멘토링 하고 있습니다</p>
		<div class="card-info">
		<div class="user-wrap">
		</div>
		</div>
		<div class="mtl-center">
		<div class="chat">
		<a href="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp""><button>내용보기</button></a>
		</div>
		</div>
		</div>
		</div>
	</div>
	
	<div class="poss">
		<div class="mtl-card">
		<img src="" alt="">
		<h4>멘토링 상세정보</h4>
		<div class="row">
		<div class="mtl-col-3">
		<img src="" width="100" height="120" id="pic"><br>
		멘토 이름: 000
		</div>
		<br>
		<p class="mtl-center">웹사이트 디자인 강의 멘토링 하고 있습니다</p>
		<div class="card-info">
		<div class="user-wrap">
		</div>
		</div>
		<div class="mtl-center">
		<div class="chat">
		<a href="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp"><button>내용보기</button></a>
		</div>
		</div>
		</div>
		</div>
	</div>
	
	<div class="movie">
		<div class="mtl-card">
		<img src="" alt="">
		<h4>멘토링 상세정보</h4>
		<div class="row">
		<div class="mtl-col-3">
		<img src="" width="100" height="120" id="pic"><br>
		멘토 이름: 000
		</div>
		<br>
		<p class="mtl-center">웹사이트 디자인 강의 멘토링 하고 있습니다</p>
		<div class="card-info">
		<div class="user-wrap">
		</div>
		</div>
		<div class="mtl-center">
		<div class="chat">
		<a href="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp"><button>내용보기</button></a>
		</div>
		</div>
		</div>
		</div>
	</div>
	
	<div class="week">
		<div class="mtl-card">
		<img src="" alt="">
		<h4>멘토링 상세정보</h4>
		<div class="row">
		<div class="mtl-col-3">
		<img src="" width="100" height="120" id="pic"><br>
		멘토 이름: 000
		</div>
		<br>
		<p class="mtl-center">웹사이트 디자인 강의 멘토링 하고 있습니다</p>
		<div class="card-info">
		<div class="user-wrap">
		</div>
		</div>
		<div class="mtl-center">
		<div class="chat">
		<a href="<%=request.getContextPath() %>/view/mentor/mentorInfo.jsp"><button>내용보기</button></a>
		</div>
		</div>
		</div>
		</div>
	</div>
	-->
</body>
</html>