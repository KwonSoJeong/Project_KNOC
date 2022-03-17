<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA Info</title>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<link rel="stylesheet" href="/Project_KNOC/resource/style/qnaInfo.css" />
<link rel="stylesheet" href="/Project_KNOC/resource/style/swiper-bundle.min.css" />
<link href="/Project_KNOC/resource/style/main.css" rel='stylesheet' type='text/css' />
</head>
<body style="padding-top: 70px;">

	<div class="layout-container">
		<div class="class_header" style="padding-top: 56px;">
			<div class="bottom-line">
				<h2 id="font">QnA</h2>
			</div>
		</div>
		<div class="wrapper">

			<main id="main">
				<section class="community-post-detail__section community-post-detail__post" data-id="473682">

					<div class="section__content">
						

						<div class="community-post-info">
							
							<div class="community-post-info__header">
								<div class="header__title">
									<div style="display: flex; align-items: center; margin-bottom: 10px;">
										<div class="question__status-tag question__status-tag--recruited">답변완료</div>
										<h1>${q.title }</h1>
									</div>
								</div>
								<div class="header__sub-title">
									<h6 class="user-name">
										<i class="fa fa-user">${q.writer }</i>
									</h6>
									<h6 class="user-name">
										&nbsp;<i class="fa fa-lock"> 비밀글</i>
									</h6>
									<span class="sub-title__created-at">&nbsp;· <i class="fa fa-pencil">${q.regDate }</i></span> <span class="sub-title__created-at">&nbsp;· <i class="fa fa-id-card-o">${q.qna_Id }</i></span>

								</div>
							</div>

							<div class="community-post-info__content">
								<p style="padding: 10px 0;">${q.content }</p>
								

							</div>

						</div>
					</div>
				</section>





				<section class="community-post-detail__section community-post-detail__answer">
					<div class="section__content">

						<div class="answer-info">
							
							<div class="community-post-info__content">
								<div class="content__body">
								<!--@@@@@ c:choose를 사용하기 위해 c:choose태그 안에 있는 주석은 전부 지웠습니다! ㅠㅠ @@@@@-->
								<c:choose>
								<c:when test="${commentCount>=1}">
									<div class="answer__comment" data-id="175159">
										<div class="comment__index">Qna 답변 ID</div>
										
										<c:forEach items="${commentList }" var="cl" varStatus="status">
										<c:if test="${status.first}">
										<div class="comment__card">
											<div class="comment__header flex-row">
												<img class="comment__user-profile" src="//www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=40" alt="eamon3481 프로필">
												<div class="flex-column">
													<div class="flex-row">
														<a href="/users/366575" class="comment__user-name">${cl.title }</a>
													</div>
												</div>
											</div>
											<div class="comment__body markdown-body">
												<p>${cl.content }</p>
												<div class="comment__features flex-row"></div>
											</div>
										</div>
										

										<div class="comment__re-comment">
											<div class="re-comment__header flex-row">
												<h4 class="re-comment__title">댓글</h4>
											</div>

											<div class="re-comment__body">
											</c:if>
											<c:if test="${!status.first }">
												<div class="re-comment flex-row" data-id="175161">
													<img class="re-comment__profile" src="//www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=40" alt="">
													<div class="re-comment__content flex-column">
														<div class="re-comment__info flex-row">

															<button class="ac-button is-sm is-solid is-gray re-comment__writer ac-tag   ">
														<span class="ac-tag__hashtag">#&nbsp;</span><span class="ac-tag__name">글 작성자</span>
													</button>
															<h6 class="re-comment__user-name">${cl.title }</h6>
															<span class="re-comment__updated-at">·&nbsp;${cl.regDate }</span>
														</div>
														<div class="re-comment__body markdown-body">
															<p>${cl.content }&nbsp;</p>
														</div>
													</div>
												</div>
												</c:if>
												</c:forEach>
												<!-- <div class="re-comment flex-row" data-id="175162">
													<img class="re-comment__profile" src="//www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=40" alt="">
													<div class="re-comment__content flex-column">
														<div class="re-comment__info flex-row">

															<button class="ac-button is-sm is-solid is-gray re-comment__writer ac-tag   ">
														<span class="ac-tag__hashtag">#&nbsp;</span><span class="ac-tag__name">답글 작성자</span>
													</button>
															<h6 class="re-comment__user-name">회원3</h6>
															<span class="re-comment__updated-at">·&nbsp;1일 전</span>
														</div>
														<div class="re-comment__body markdown-body">
															<p>저도 무엇이 궁금하신지 궁금하네요.</p>
														</div>
													</div>
												</div> -->

												<div class="re-comment__open-editor-button-container">
													<button class="ac-button is-md is-text re-comment__open-editor-button e-open-re-comment-editor ">댓글 달기</button>
												</div>

												<form action="<%=request.getContextPath()%>/help/commentWritePro" method="post" id="" class="" role="form" onsubmit="">
													<div class="re-comment__form re-comment__form--is-hidden">
														<textarea name="content" class="tinymce comment-editor" data-id="175159" placeholder="댓글을 입력해주세요.." rows="10" style="color: transparent; text-shadow: 0 0 0 black;"></textarea>
														<input type="hidden" name="qna_Id" value="${q.qna_Id }">
														<div class="re-comment__form-footer flex-row">
															<div class="flex-right">
																<button type="submit" class="ac-button is-md is-solid is-primary e-post-re-comment ">댓글 등록</button>
															</div>
														</div>
													</div>
												</form>

											</div>
										</div>
									</div>
									</c:when>
									
									<c:otherwise>
									<div class="answer__comment" data-id="new">
										<div class="comment__card comment__card--new">
											<form action="<%=request.getContextPath() %>/help/commentWritePro" method="post" id="" class="" role="form" onsubmit="">
											<div class="comment__header flex-row">
												<img class="comment__user-profile" src="//www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=40" alt="won joon lee 프로필">
												<div class="flex-column">
												
													<textarea name="title" class="tinymce comment-editor" data-id="175159" placeholder="제목을 입력해주세요.." rows="1" style="color: transparent; text-shadow: 0 0 0 black;"></textarea>
												</div>
											</div>

											
												<textarea name="content" class="tinymce comment-editor" data-id="175159" placeholder="답글을 입력해주세요.." rows="10" style="color: transparent; text-shadow: 0 0 0 black;"></textarea>
												<input type="hidden" name="qna_Id" value="${q.qna_Id }">
												<div class="comment__body markdown-body" style="padding: 0;">
													<div class="comment__footer flex-row">
														<div class="flex-right">
															<button type="submit" class="ac-button is-md is-solid is-primary e-post-comment ">답변 등록</button>
														</div>
													</div>
												</div>
											</form>
										</div>
									</div>
									</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>
				</section>
			</main>
</body>
</html>