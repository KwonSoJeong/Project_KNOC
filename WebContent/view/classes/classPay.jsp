<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/style/classPay.css">
<meta charset="UTF-8">
</head>
<body>
	<div class="cl-wrapper">
		<div class="class_header" style="padding-top: 40px; justify-content: center;">
			<h2 id="font">클래스 결제</h2>

		</div>
		<!-- <div class="bottom-line"></div> -->
		<div class="main_content" style="margin-top: 70px;">

			<section>

				<span style="font-size: 24px;">결제 클래스 정보</span>
				<div class="payment-container">
					<div class="payment-thumbnail">
						<div class="box">

							<div class="heart_img">
								<div class="cc-cc">
									<img src="/Project_KNOC/thumbnail/" onclick="location.href='/Project_KNOC/classes/classInfo?class_id='" style="width: 280px; height: 215px;">
								</div>
							</div>
						</div>
					</div>

					<div>
						<div class="payment-title">클래스 제목(왼쪽 정렬)</div>
					</div>
					<div>
						<div class="payment-price">55,000원</div>
					</div>
				</div>

				<div class="payment-btn-wrapper">
					<button class="payment-btn">결제하기</button>
				</div>

			</section>

		</div>
	</div>
</body>
</html>