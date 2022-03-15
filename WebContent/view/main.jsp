<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!-- ㅡㅡㅡㅡㅡㅡㅡㅡMAINㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="../js/click.js"></script>
<link href="../resource/style/main.css" rel='stylesheet' type='text/css'/>
</head>
<body style="padding-top: 70px;">
	<!-- ㅡㅡㅡㅡㅡㅡㅡㅡ배너ㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
	<div class="carousel-bcc">
		<div class="container">
			<div id="demo" class="carousel slide" data-ride="carousel">
			  <ul id=carousel-indicators1 class="carousel-indicators">
			    <li data-target="#demo" data-slide-to="0" class="active"></li>
			    <li data-target="#demo" data-slide-to="1"></li>
			    <li data-target="#demo" data-slide-to="2"></li>
			  </ul>
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="<%=request.getContextPath() %>/resource/image/one.png" alt="one" width="1100" height="500">
			      <div class="carousel-caption">
			        <h3>Title</h3>
			        <p>content</p>
			      </div>   
			    </div>
			    <div class="carousel-item">
			      <img src="<%=request.getContextPath() %>/resource/image/two.png" alt="two" width="1100" height="500">
			      <div class="carousel-caption">
			        <h3>Title</h3>
			        <p>content</p>
			      </div>   
			    </div>
			    <div class="carousel-item">
			      <img src="<%=request.getContextPath() %>/resource/image/three.png" alt="three" width="1100" height="500">
			      <div class="carousel-caption">
			        <h3>Title</h3>
			        <p>content</p>
			      </div>   
			    </div>
			  </div>
			</div>
		</div>			
	</div>

	<!-- ㅡㅡㅡㅡㅡㅡㅡㅡ검색창ㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
	<div id="box-def" class="searchc1">
		<div id="box-def" class="searchcr">
			<form action="<%=request.getContextPath() %>/classes/classList" id="box-def" >
				<input id="search"  type="text" value="" placeholder="관심 있는 클래스를 입력해보세요." name="search_keyword">
				<button class="searchbtn" type="submit" >
					<img src="<%=request.getContextPath()%>/resource/image/search1.png">
				</button>
			</form>
		</div>
	</div>
	<div class="bor-bot"></div>
	
	<!-- ㅡㅡㅡㅡㅡㅡㅡㅡ신규강의ㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
	<div class="mnc-container"> 
		<div class="mnc-class">New Class</div>
		<div class="mnc-lcontainer">
		<c:forEach var="c" items="${newClassList }">
			<div class="mnc-content" onclick="location.href='<%=request.getContextPath()%>/classes/classInfo?class_id=${c.class_id }'">
				<div>
					<div class="mnc-thumbnail">
						<img src="<%=request.getContextPath()%>/thumbnail/${c.thumbnail}">
					</div>
					<div class="mnc-heart"></div>
				</div>
				<div class="mnc-creator">${c.lec_id }</div>
				<div class="mnc-title">${c.title }</div>
				<div class="mnc-heartcnt">♥ ${c.favorite }</div>
				<div class="mnc-bor-bot"></div>
				<div class="mnc-price">${c.price }원</div>
				
			</div>
			</c:forEach>
			<!--  
			<div class="mnc-content" onclick="location.href='<%=request.getContextPath()%>/classes/classInfo?='">
				<div>
					<div class="mnc-thumbnail">
						<img src="#">
					</div>
					<div class="mnc-heart"></div>
				</div>
				<div class="mnc-creator">콕스</div>
				<div class="mnc-title">[신규혜택]...</div>
				<div class="mnc-heartcnt">♥ 59756</div>
				<div class="mnc-bor-bot"></div>
				<div class="mnc-price">월 10,700원</div>
			</div>
			
			<div class="mnc-content" onclick="location.href='<%=request.getContextPath()%>/classes/classInfo?='">
				<div>
					<div class="mnc-thumbnail">
						<img src="#">
					</div>
					<div class="mnc-heart"></div>
				</div>
				<div class="mnc-creator">콕스</div>
				<div class="mnc-title">[반값할인] 과자 잘먹는법 잘먹는법 잘먹는법 잘먹는법 잘먹는법...</div>
				<div class="mnc-heartcnt">♥ 59756</div>
				<div class="mnc-bor-bot"></div>
				<div class="mnc-price">연 1원</div>
			</div>
					
			<div class="mnc-content" onclick="location.href='<%=request.getContextPath()%>/classes/classInfo?='">
				<div>
					<div class="mnc-thumbnail">
						<img src="#">
					</div>
					<div class="mnc-heart"></div>
				</div>
				<div class="mnc-creator">콕스</div>
				<div class="mnc-title">[TEST] TEST TEST TEST TEST TEST TEST ...</div>
				<div class="mnc-heartcnt">♥ 59756</div>
				<div class="mnc-bor-bot"></div>
				<div class="mnc-price">월 40,200원</div>
			</div>
			-->
		</div>
	</div>

	<!-- ㅡㅡㅡㅡㅡㅡㅡㅡ추천강의ㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
	<div class="mnc-container"> 
		<div class="mnc-class">ONE PICK! Class</div>
		<div class="mnc-lcontainer">
		<c:forEach var="c" items="${favoriteClassList}">
			<div class="mnc-content" onclick="location.href='<%=request.getContextPath()%>/classes/classInfo?class_id=${c.class_id }'">
				<div >
					<div class="mnc-thumbnail">
						<img src="#">
					</div>
					<div class="mnc-heart"></div>
				</div>
				<div class="mnc-creator">${c.lec_id }</div>
				<div class="mnc-title">${c.title }</div>
				<div class="mnc-heartcnt">♥ ${c.favorite }</div>
				<div class="mnc-bor-bot"></div>
				<div class="mnc-price">${c.price }원</div>
			</div>
			</c:forEach>
			<!-- 
			<div class="mnc-content" onclick="location.href='<%=request.getContextPath()%>/classes/classInfo?='">
				<div>
					<div class="mnc-thumbnail">
						<img src="#">
					</div>
					<div class="mnc-heart"></div>
				</div>
				<div class="mnc-creator">콕스</div>
				<div class="mnc-title">[신규혜택]...</div>
				<div class="mnc-heartcnt">♥ 59756</div>
				<div class="mnc-bor-bot"></div>
				<div class="mnc-price">월 10,700원</div>
			</div>
			
			<div class="mnc-content" onclick="location.href='<%=request.getContextPath()%>/classes/classInfo?='">
				<div>
					<div class="mnc-thumbnail">
						<img src="#">
					</div>
					<div class="mnc-heart"></div>
				</div>
				<div class="mnc-creator">콕스</div>
				<div class="mnc-title">[반값할인] 과자 잘먹는법 잘먹는법 잘먹는법 잘먹는법 잘먹는법...</div>
				<div class="mnc-heartcnt">♥ 59756</div>
				<div class="mnc-bor-bot"></div>
				<div class="mnc-price">연 1원</div>
			</div>
			
			<div class="mnc-content" onclick="location.href='<%=request.getContextPath()%>/classes/classInfo?='">
				<div>
					<div class="mnc-thumbnail">
						<img src="#">
					</div>
					<div class="mnc-heart"></div>
				</div>
				<div class="mnc-creator">콕스</div>
				<div class="mnc-title">[TEST] TEST TEST TEST TEST TEST TEST ...</div>
				<div class="mnc-heartcnt">♥ 59756</div>
				<div class="mnc-bor-bot"></div>
				<div class="mnc-price">월 40,200원</div>
			</div>
			-->
		</div>
	</div>	
	
	<!-- ㅡㅡㅡㅡㅡㅡㅡㅡ채널톡ㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->	
	<div class="no m-cht">
		<img src="<%=request.getContextPath()%>/resource/image/talk.png">
	</div>

	<div class="ya1" style="display: none;">
		<div class="m-cht-box">
			<div class="m-cht-box-title">KNOC</div>
			<div class="cht-bor-bot"></div>
			<div></div>
		</div>
	</div>

	<div class="no2 m-cht-box-x" style="display: none;">-</div>
</body>
</html>