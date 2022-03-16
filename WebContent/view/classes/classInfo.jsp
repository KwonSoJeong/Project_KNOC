<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스 제목</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/style/classInfo.css">
</head>
<body>

<div id="class-bot">
		<h2 id ="class-h2">클래스 제목</h2>
	</div>
	<form class="class-form" action="#">
		<input class="class-control" type="text" placeholder="검색하기">
		<button id="class-bung" type="submit">검색</button>
	</form>

	<div class="class-wrapper">
	<div class="class-font">
	<label>클래스 제목:&nbsp;${classone.title}</label>
	<img src="<%=request.getContextPath() %>/thumbnail/${classone.thumbnail}" width="200" height="210">
	<p>가격:&nbsp;${classone.price}원</p>
	</div>
	
	<div class="class-font"> <label>클래스 공유자 프로필</label>
	<img src="<%=request.getContextPath() %>/profile/${profile}" width="110" height="90">
	<br>
	<p>클래스 공유자 이름:&nbsp;${classone.lec_id}</p>
	
	<!-- <button id="class-bung2" type="submit" value="멘토링 신청">멘토링신청</button>  -->
	<button id="class-bung2" type="button" onclick="location.href='<%=request.getContextPath()%>/classes/classRegister'">수강신청</button>
	</div>
	</div>


<%-- <div id="class-col">
	<h3 id="classInfo-h2">클래스 제목</h3>
	</div>
	
 	<div class="calss-canter">
	<div class="item-wrap">
	<div class="class-card">
	<h4>디자인</h4>
	<div class="col-3">
	<img src="" width="520" height="300">
	</div>
	<p>
	<br>
	<br>가격: ${classone.price}원
	</p>
    </div>
	</div>
	</div>

	<div class="class-fnete">
	<div class="class-card">
	<img src="" alt="">
	<h3>클래스 공유자 프로필</h3><br>
	<div class="row">
	<div class="col-3">
	<img src="" width="100" height="120">
	<br>클래스 공유자 이름: ${classone.lec_id}</div>
	<div class="class-info">
	<div class="user-wrap">
	
	<p>${classone.intro}</p>
	<div class="card-chat">
	<div class="chat"> 
	<button type="button" onclick="location.href='<%=request.getContextPath()%>/classes/classRegister'">수강신청</button>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div> --%>
</body>
</html>