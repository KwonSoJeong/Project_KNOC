<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ㅡㅡㅡㅡㅡㅡㅡㅡmyPageㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/style/myPage.css">
</head>
<body style="padding-top: 70px;">

	<div class="mp-wrapper">
		<div class="mp-fsfc">마이페이지</div>
		<div class="mp-bor-bot"></div>

		<form class="mp-form" action="#">
			<input class="mp-form-control mp-form-content" type="text" placeholder="검색하기">
			<button id="btn" type="submit">검색</button>
		</form>

	
	
		<div style="margin: 50px 0">
			<div class="mp-lcontainer">
				<div>
					<div class="mp-thumbnail"></div>
				</div>
	
				<div>
					<div class="mp-thumbnail"></div>
				</div>
				
				<div>
					<div class="mp-thumbnail"></div>
				</div>
				
				<div>
					<div class="mp-thumbnail"></div>
				</div>
			</div>
			
			<div class="mp"></div>
			
			<div class="mp-lcontainer">

				<div>
					<div class="mp-thumbnail"></div>
				</div>
	
				<div>
					<div class="mp-thumbnail"></div>
				</div>
				
				<div>
					<div class="mp-thumbnail"></div>
				</div>
				
				<div>
					<div class="mp-thumbnail"></div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>