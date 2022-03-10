<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<title>KNOC</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script>@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');</script>
<link href="../resource/style/header.css" rel='stylesheet' type='text/css'/>
<link href="../../resource/style/header.css" rel='stylesheet' type='text/css'/>
<script src="../../js/hover.js"></script>

<body id="wrapper">
	<!-- ㅡㅡㅡㅡㅡㅡㅡㅡ헤더ㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
	<div class="header">
		<nav class="hnav navbar-expand-lg navbar-light">
			<!-- logo -->
			<a class="navbar-brand1" href="<%=request.getContextPath() %>/view/main.jsp">
				<img src="<%=request.getContextPath() %>/resource/image/logo.png">
			</a>
			<!-- 좌측헤더 -->
			<ul class="navbar-nav drop" style="flex-direction: row;" >			
				<c:if test="${memid==null}">			
					<li id="num1" class="nav-it">
						<a href="/Project_KNOC/view/classes/classlist.html" id="fsfc" class="nav-link">클래스 ▼</a>
						<ul id="subnav" class="submenu">
							<li><a href="#">운동</a></li>
							<li><a href="#">크리에이티브</a></li>
							<li><a href="#">디자인</a></li>
							<li><a href="#">개발/프로그래밍</a></li>
							<li><a href="#">요리/베이킹</a></li>
							<li><a href="#">금융/재태크</a></li>
						</ul>
					</li>
					<li class="nav-it">
						<a href="<%=request.getContextPath() %>/view/mentor/mentorlist.html" id="fsfc" class="nav-link">멘토링</a>
					</li>
					<li class="nav-it">
						<a href="<%=request.getContextPath() %>/view/study/studyList.jsp" id="fsfc" class="nav-link">스터디</a>
					</li>	
				</c:if>
		
				<c:if test="${memid!=null}">
					<li class="nav-it">
						<a href="<%=request.getContextPath() %>/classes/classlist" id="fsfc" class="nav-link">클래스 카테고리</a>
					</li>
					<li class="nav-it">
						<a href="<%=request.getContextPath() %>/view/mentor/mentorlist.html" id="fsfc" class="nav-link">멘토링</a>
					</li>
					<li class="nav-it">
						<a href="<%=request.getContextPath() %>/view/study/studyList.jsp" id="fsfc" class="nav-link">스터디</a>
					</li>
					<li class="nav-it">
						<a href="<%=request.getContextPath() %>/study/creator" id="fsfc" class="nav-link">지식공유참여</a>
					</li>
				</c:if>	
			</ul>				
			<!-- 우측헤더 -->	
			<ul id="navbar-nav1" class="navbar-nav justify-content-end">			
				<c:if test="${memid==null}">
					<li class="nav-it">
						<a id="fsfc" class="nav-link" href="<%=request.getContextPath() %>/view/member/login.jsp">로그인</a>
					</li>
					<li class="nav-it">
						<a id="fsfc" class="nav-link" href="<%=request.getContextPath() %>/view/member/memberInput.jsp">회원가입</a>
					</li>
					<li class="nav-it">
						<a id="fsfc" class="nav-link" href="<%=request.getContextPath() %>/help/qnaList">고객센터</a>
					</li>
				</c:if>
		
				<c:if test="${memid!=null}">
				
					<li class="nav-it">
						<a id="fsfc" class="nav-link"	href="<%=request.getContextPath() %>/member/logout">로그아웃</a>
					</li>	
					<li class="nav-it">
						<a id="fsfc" class="nav-link" href="<%=request.getContextPath() %>/member/myPage">마이페이지</a>
					</li>
					<li class="nav-it">
						<a id="fsfc" class="nav-link" href="<%=request.getContextPath() %>/help/qnaList">고객센터</a>
					</li>				
				</c:if>	
			</ul>			
		</nav>
	</div>