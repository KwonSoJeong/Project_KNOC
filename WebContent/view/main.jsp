<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KNOC</title>
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
			  <a class="carousel-control-prev" href="#demo" data-slide="prev">
			    <span class="carousel-control-prev-icon"></span>
			  </a>
			  <a class="carousel-control-next" href="#demo" data-slide="next">
			    <span class="carousel-control-next-icon"></span>
			  </a>
			</div>
		</div>			
	</div>

	<!-- ㅡㅡㅡㅡㅡㅡㅡㅡ검색창ㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
	<div id="box-def" class="searchc1">
		<div id="box-def" class="searchcr">
			<form action="#" id="box-def" >
				<input id="search"  type="text" value="" placeholder="관심 있는 클래스를 입력해보세요.">
				<button class="searchbtn" type="submit" >
					<img src="<%=request.getContextPath() %>/resource/image/search1.png">
				</button>
			</form>
		</div>
	</div>
	<div class="bor-bot"></div>
	
	<!-- ㅡㅡㅡㅡㅡㅡㅡㅡ신규강의ㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
	<div class="mnc-container"> 
		<div class="mnc-Class">New Class</div>
		<div class="mnc-thumbnail"></div><div class="하트"></div>
		<div class="mnc-creator">콕스</div>
		<div class="mnc-title">포토샵 잘하는법 단기간에 섭렵하기기기기</div>
		<div class="관심수"></div><div class="좋아요수"></div>
		<div class="가격"></div>
	
	</div>

	
	
</body>
</html>