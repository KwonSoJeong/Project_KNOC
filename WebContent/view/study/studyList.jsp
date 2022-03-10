<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스터디</title>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<link rel="stylesheet" href="/Project_KNOC/resource/style/studyList.css" />
<link rel="stylesheet" href="/Project_KNOC/resource/style/swiper-bundle.min.css" />
<link href="/Project_KNOC/resource/style/main.css" rel='stylesheet' type='text/css' />
</head>
<body style="padding-top: 70px;">
	<div class="layout-container">
		<div class="wrapper">
			<div id="list-article" class="content scaffold-list gathering-list" role="main">
				<div class="nav" role="navigation">

					<div style="margin-top: 50px">
						<span style="font-size: 24px">스터디</span> <a class="create btn btn-success btn-wide pull-right" href="/Project_KNOC/view/study/studyWrite.jsp" style="background-color: #37d3c0; border-color: #37d3c0;"><i class="fa fa-pencil"></i> 새 글 쓰기 (👉클릭👈)</a>
						<hr style="border: 0; margin-top: 4px; height: 3px; background: #b8e6e1" />
					</div>

					<form id="category-filter-form" name="category-filter-form" method="get" action="/articles/gathering">
						<div class="category-filter-wrapper">
							<div class="category-filter-query pull-right">
								<div class="input-group input-group-sm">
									<input type="search" name="query" id="search-field" class="form-control" placeholder="검색어" value="" /> <span class="input-group-btn">
										<button type="submit" class="btn btn-default">
											<i class="fa fa-search">검색</i>
										</button>
									</span>
								</div>
							</div>

							<ul class="list-sort pull-left">
								<li><a href="/articles/gathering?query=&sort=id&order=desc" data-sort="id" data-order="desc" class="category-sort-link active">전체</a></li>
								<li><a href="/articles/gathering?query=&sort=voteCount&order=desc" data-sort="voteCount" data-order="desc" class="category-sort-link">모집중</a></li>
								<li><a href="/articles/gathering?query=&sort=noteCount&order=desc" data-sort="noteCount" data-order="desc" class="category-sort-link">모집완료</a></li>
							</ul>
							<input type="hidden" name="sort" id="category-sort-input" value="id" /> <input type="hidden" name="order" id="category-order-input" value="desc" />
						</div>
					</form>
				</div>

				<div class="okkys-choice">
					<div class="panel panel-default">
						<!-- Table -->
						<ul class="list-group">
							<li class="list-group-item list-group-item-question list-group-no-note clearfix">
								<div class="list-title-wrapper clearfix">
									<div class="list-tag clearfix">
										<a href="/articles/notice" class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i> 모집중</a>
									</div>

									<h5 class="list-group-item-heading list-group-item-evaluate">
										<a href="/Project_KNOC/view/study/studyInfo.jsp"> 모델2 스터디 구합니다 (👉클릭👈) </a>
									</h5>
								</div>

								<div class="list-group-item-author clearfix">
									<div class="avatar clearfix avatar-list">
										<a href="/user/info/45597" class="avatar-photo"><img src="//www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=40" /></a>
										<div class="avatar-info">
											<a class="nickname" href="/user/info/45597" title="KNOC">KNOC</a>
											<div class="date-created">
												<span class="timeago" title="2022-03-02T14:33:59">2022-03-02 14:33:59</span>
											</div>
										</div>
									</div>
								</div>
							</li>

							<li class="list-group-item list-group-item-question list-group-no-note clearfix">
								<div class="list-title-wrapper clearfix">
									<div class="list-tag clearfix">
										<a href="/articles/notice" class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i> 모집중</a>
									</div>

									<h5 class="list-group-item-heading list-group-item-evaluate">
										<a href="/article/1169448"> 모델2 스터디 구합니다1 </a>
									</h5>
								</div>

								<div class="list-group-item-author clearfix">
									<div class="avatar clearfix avatar-list">
										<a href="/user/info/45597" class="avatar-photo"><img src="//www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=40" /></a>
										<div class="avatar-info">
											<a class="nickname" href="/user/info/45597" title="KNOC">KNOC</a>
											<div class="date-created">
												<span class="timeago" title="2022-03-02T14:33:59">2022-03-02 14:33:59</span>
											</div>
										</div>
									</div>
								</div>
							</li>

							<li class="list-group-item list-group-item-question list-group-no-note clearfix">
								<div class="list-title-wrapper clearfix">
									<div class="list-tag clearfix">
										<a href="/articles/notice" class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i> 모집중</a>
									</div>

									<h5 class="list-group-item-heading list-group-item-evaluate">
										<a href="/article/1169448"> 모델2 스터디 구합니다2 </a>
									</h5>
								</div>

								<div class="list-group-item-author clearfix">
									<div class="avatar clearfix avatar-list">
										<a href="/user/info/45597" class="avatar-photo"><img src="//www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=40" /></a>
										<div class="avatar-info">
											<a class="nickname" href="/user/info/45597" title="KNOC">KNOC</a>
											<div class="date-created">
												<span class="timeago" title="2022-03-02T14:33:59">2022-03-02 14:33:59</span>
											</div>
										</div>
									</div>
								</div>
							</li>

							<li class="list-group-item list-group-item-question list-group-no-note clearfix">
								<div class="list-title-wrapper clearfix">
									<div class="list-tag clearfix">
										<a href="/articles/notice" class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i> 모집중</a>
									</div>

									<h5 class="list-group-item-heading list-group-item-evaluate">
										<a href="/article/1169448"> 모델2 스터디 구합니다3 </a>
									</h5>
								</div>

								<div class="list-group-item-author clearfix">
									<div class="avatar clearfix avatar-list">
										<a href="/user/info/45597" class="avatar-photo"><img src="//www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=40" /></a>
										<div class="avatar-info">
											<a class="nickname" href="/user/info/45597" title="KNOC">KNOC</a>
											<div class="date-created">
												<span class="timeago" title="2022-03-02T14:33:59">2022-03-02 14:33:59</span>
											</div>
										</div>
									</div>
								</div>
							</li>

							<li class="list-group-item list-group-item-question list-group-no-note clearfix">
								<div class="list-title-wrapper clearfix">
									<div class="list-tag clearfix">
										<a href="/articles/notice" class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i> 모집중</a>
									</div>

									<h5 class="list-group-item-heading list-group-item-evaluate">
										<a href="/article/1169448"> 모델2 스터디 구합니다4 </a>
									</h5>
								</div>

								<div class="list-group-item-author clearfix">
									<div class="avatar clearfix avatar-list">
										<a href="/user/info/45597" class="avatar-photo"><img src="//www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=40" /></a>
										<div class="avatar-info">
											<a class="nickname" href="/user/info/45597" title="KNOC">KNOC</a>
											<div class="date-created">
												<span class="timeago" title="2022-03-02T14:33:59">2022-03-02 14:33:59</span>
											</div>
										</div>
									</div>
								</div>
							</li>

							<li class="list-group-item list-group-item-question list-group-no-note clearfix">
								<div class="list-title-wrapper clearfix">
									<div class="list-tag clearfix">
										<a href="/articles/notice" class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i> 모집중</a>
									</div>

									<h5 class="list-group-item-heading list-group-item-evaluate">
										<a href="/article/1169448"> 모델2 스터디 구합니다5 </a>
									</h5>
								</div>

								<div class="list-group-item-author clearfix">
									<div class="avatar clearfix avatar-list">
										<a href="/user/info/45597" class="avatar-photo"><img src="//www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=40" /></a>
										<div class="avatar-info">
											<a class="nickname" href="/user/info/45597" title="KNOC">KNOC</a>
											<div class="date-created">
												<span class="timeago" title="2022-03-02T14:33:59">2022-03-02 14:33:59</span>
											</div>
										</div>
									</div>
								</div>
							</li>

							<li class="list-group-item list-group-item-question list-group-no-note clearfix">
								<div class="list-title-wrapper clearfix">
									<div class="list-tag clearfix">
										<a href="/articles/notice" class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i> 모집중</a>
									</div>

									<h5 class="list-group-item-heading list-group-item-evaluate">
										<a href="/article/1169448"> 모델2 스터디 구합니다6 </a>
									</h5>
								</div>

								<div class="list-group-item-author clearfix">
									<div class="avatar clearfix avatar-list">
										<a href="/user/info/45597" class="avatar-photo"><img src="//www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=40" /></a>
										<div class="avatar-info">
											<a class="nickname" href="/user/info/45597" title="KNOC">KNOC</a>
											<div class="date-created">
												<span class="timeago" title="2022-03-02T14:33:59">2022-03-02 14:33:59</span>
											</div>
										</div>
									</div>
								</div>
							</li>

							<li class="list-group-item list-group-item-question list-group-no-note clearfix">
								<div class="list-title-wrapper clearfix">
									<div class="list-tag clearfix">
										<a href="/articles/notice" class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i> 모집중</a>
									</div>

									<h5 class="list-group-item-heading list-group-item-evaluate">
										<a href="/article/1169448"> 모델2 스터디 구합니다7 </a>
									</h5>
								</div>

								<div class="list-group-item-author clearfix">
									<div class="avatar clearfix avatar-list">
										<a href="/user/info/45597" class="avatar-photo"><img src="//www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=40" /></a>
										<div class="avatar-info">
											<a class="nickname" href="/user/info/45597" title="KNOC">KNOC</a>
											<div class="date-created">
												<span class="timeago" title="2022-03-02T14:33:59">2022-03-02 14:33:59</span>
											</div>
										</div>
									</div>
								</div>
							</li>

							<li class="list-group-item list-group-item-question list-group-no-note clearfix">
								<div class="list-title-wrapper clearfix">
									<div class="list-tag clearfix">
										<a href="/articles/notice" class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i> 모집중</a>
									</div>

									<h5 class="list-group-item-heading list-group-item-evaluate">
										<a href="/article/1169448"> 모델2 스터디 구합니다8 </a>
									</h5>
								</div>

								<div class="list-group-item-author clearfix">
									<div class="avatar clearfix avatar-list">
										<a href="/user/info/45597" class="avatar-photo"><img src="//www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=40" /></a>
										<div class="avatar-info">
											<a class="nickname" href="/user/info/45597" title="KNOC">KNOC</a>
											<div class="date-created">
												<span class="timeago" title="2022-03-02T14:33:59">2022-03-02 14:33:59</span>
											</div>
										</div>
									</div>
								</div>
							</li>

							<li class="list-group-item list-group-item-question list-group-no-note clearfix">
								<div class="list-title-wrapper clearfix">
									<div class="list-tag clearfix">
										<a href="/articles/notice" class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i> 모집중</a>
									</div>

									<h5 class="list-group-item-heading list-group-item-evaluate">
										<a href="/article/1169448"> 모델2 스터디 구합니다9 </a>
									</h5>
								</div>

								<div class="list-group-item-author clearfix">
									<div class="avatar clearfix avatar-list">
										<a href="/user/info/45597" class="avatar-photo"><img src="//www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=40" /></a>
										<div class="avatar-info">
											<a class="nickname" href="/user/info/45597" title="KNOC">KNOC</a>
											<div class="date-created">
												<span class="timeago" title="2022-03-02T14:33:59">2022-03-02 14:33:59</span>
											</div>
										</div>
									</div>
								</div>
							</li>

							<li class="list-group-item list-group-item-question list-group-no-note clearfix">
								<div class="list-title-wrapper clearfix">
									<div class="list-tag clearfix">
										<a href="/articles/notice" class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i> 모집중</a>
									</div>

									<h5 class="list-group-item-heading list-group-item-evaluate">
										<a href="/article/1169448"> 모델2 스터디 구합니다10 </a>
									</h5>
								</div>

								<div class="list-group-item-author clearfix">
									<div class="avatar clearfix avatar-list">
										<a href="/user/info/45597" class="avatar-photo"><img src="//www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=40" /></a>
										<div class="avatar-info">
											<a class="nickname" href="/user/info/45597" title="KNOC">KNOC</a>
											<div class="date-created">
												<span class="timeago" title="2022-03-02T14:33:59">2022-03-02 14:33:59</span>
											</div>
										</div>
									</div>
								</div>
							</li>

							<li class="list-group-item list-group-item-question list-group-no-note clearfix">
								<div class="list-title-wrapper clearfix">
									<div class="list-tag clearfix">
										<a href="/articles/notice" class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i> 모집중</a>
									</div>

									<h5 class="list-group-item-heading list-group-item-evaluate">
										<a href="/article/1169448"> 모델2 스터디 구합니다11 </a>
									</h5>
								</div>

								<div class="list-group-item-author clearfix">
									<div class="avatar clearfix avatar-list">
										<a href="/user/info/45597" class="avatar-photo"><img src="//www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=40" /></a>
										<div class="avatar-info">
											<a class="nickname" href="/user/info/45597" title="KNOC">KNOC</a>
											<div class="date-created">
												<span class="timeago" title="2022-03-02T14:33:59">2022-03-02 14:33:59</span>
											</div>
										</div>
									</div>
								</div>
							</li>


							<li class="list-group-item list-group-item-question list-group-has-note clearfix">
								<div class="list-title-wrapper clearfix">
									<div class="list-tag clearfix">
										<a href="/articles/tagged/%EB%B0%B1%EC%97%94%EB%93%9C" class="list-group-item-text item-tag label label-gray">모집완료</a>
									</div>

									<h5 class="list-group-item-heading list-group-item-evaluate">
										<a href="/article/1173202"> 모델1 스터디 구합니다 </a>
									</h5>
								</div>

								<div class="list-group-item-author clearfix">
									<div class="avatar clearfix avatar-list">
										<a href="/user/info/121873" class="avatar-photo"><img src="//www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&s=40" /></a>
										<div class="avatar-info">
											<a class="nickname" href="/user/info/121873" title="김코딩">김코딩</a>
											<div class="date-created">
												<span class="timeago" title="2022-03-08T07:55:01">2021-12-13 07:55:01</span>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="text-center">
						<ul class="pagination pagination-sm">
							<li class="prev disabled"><span> « </span></li>

							<li class="active"><span>1</span></li>
							<li><a href="/articles/gathering?query=&offset=24&max=24&sort=id&order=desc">2</a></li>
							<li><a href="/articles/gathering?query=&offset=48&max=24&sort=id&order=desc">3</a></li>
							<li><a href="/articles/gathering?query=&offset=72&max=24&sort=id&order=desc">4</a></li>
							<li><a href="/articles/gathering?query=&offset=96&max=24&sort=id&order=desc">5</a></li>
							<li><a href="/articles/gathering?query=&offset=120&max=24&sort=id&order=desc">6</a></li>
							<li><a href="/articles/gathering?query=&offset=144&max=24&sort=id&order=desc">7</a></li>
							<li><a href="/articles/gathering?query=&offset=168&max=24&sort=id&order=desc">8</a></li>
							<li><a href="/articles/gathering?query=&offset=192&max=24&sort=id&order=desc">9</a></li>
							<li><a href="/articles/gathering?query=&offset=216&max=24&sort=id&order=desc">10</a></li>

							<li class="disabled"><span>...</span></li>
							<li><a href="/articles/gathering?query=&offset=5520&max=24&sort=id&order=desc">231</a></li>

							<li class="next"><a href="/articles/gathering?query=&offset=24&max=24&sort=id&order=desc">»</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>