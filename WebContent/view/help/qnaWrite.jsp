<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="modal ">
		<div class="dimmed"></div>
		<section class="modal-card question-modal">
			<div class="question-modal__form e-form-question-modal" onsubmit="return false">
				<div class="modal-card-body">
					<div class="form__item form__item--type">
						<label class="form__label">커뮤니티</label>
						<ul class="question-modal__type-list">

							<li class="question-modal__type " data-type="question">

								<button class="ac-button is-md is-solid is-primary question-modal__type-button e-type " style="min-width: 90px" data-type="question">질문</button>
							</li>
							<li class="question-modal__type " data-type="chat">

								<button class="ac-button is-md is-solid is-primary question-modal__type-button e-type " style="min-width: 90px" data-type="chat">자유주제</button>
							</li>
							<li class="question-modal__type question-modal__type--selected" data-type="study">

								<button class="ac-button is-md is-solid is-primary question-modal__type-button e-type " style="min-width: 90px" data-type="study">스터디</button>
							</li>
						</ul>
					</div>
					<div class="form__item">
						<label class="form__label" for="question-modal-title">제목</label>

						<div class="ac-input-with-item--large question-modal__title ">

							<input value="" data-kv="title" type="text" placeholder="제목을 입력해주세요.">

						</div>

					</div>
					<div class="form__item">
						<label class="form__label" for="question-modal-tag">태그</label>


						<div class="ac-input-with-item question-modal__tag e-input-tags ac-input-tags ">

							<svg width="16" xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 16 16">
								<path fill="#3E4042" fill-rule="evenodd" d="M5.773 1.455c-.283 0-.518.216-.542.498L5 4.727H2.545c-.3 0-.545.244-.545.546 0 .301.244.545.545.545H4.91l-.364 4.364h-2c-.3 0-.545.244-.545.545 0 .301.244.546.545.546h1.91l-.224 2.684c-.027.317.224.588.542.588.282 0 .518-.216.541-.498l.231-2.774H9.91l-.224 2.684c-.026.317.224.588.542.588.283 0 .518-.216.542-.498L11 11.273h2.454c.302 0 .546-.245.546-.546 0-.301-.244-.545-.546-.545h-2.363l.364-4.364h2c.3 0 .545-.244.545-.545 0-.302-.244-.546-.546-.546h-1.909l.224-2.684c.027-.317-.224-.588-.542-.588-.282 0-.518.216-.541.498l-.232 2.774H6.091l.224-2.684c.026-.317-.224-.588-.542-.588zM6 5.818l-.364 4.364H10l.364-4.364H6z" clip-rule="evenodd"></path></svg>

							<input value="" type="text" placeholder="태그를 설정해주세요." initial-value="">

						</div>


						<span class="input-tags__description input-tags__description--default"> 최대 10개의 태그를 달 수 있어요! </span>

					</div>
					<div class="form__item">
						<label class="form__label">내용</label>
						<textarea class="tinymce" id="mce_0" style="display: none;" aria-hidden="true"></textarea>
						<div role="application" class="tox tox-tinymce" aria-disabled="false" style="visibility: hidden; height: 450px;" data-mce-style="visibility: hidden; height: 450px;">
							<div class="tox-editor-container">
								<div data-alloy-vertical-dir="toptobottom" class="tox-editor-header">
									<div role="group" class="tox-toolbar-overlord" aria-disabled="false">
										<div role="group" class="tox-toolbar__primary">
											<div title="" role="toolbar" data-alloy-tabstop="true" tabindex="-1" class="tox-toolbar__group">
												<button title="Formats" aria-label="Formats" aria-haspopup="true" type="button" unselectable="on" tabindex="-1" class="tox-tbtn tox-tbtn--select tox-tbtn--bespoke" aria-expanded="false" style="user-select: none;">
													<span class="tox-tbtn__select-label">Paragraph</span>
													<div class="tox-tbtn__select-chevron">
														<svg width="10" height="10" focusable="false">
															<path d="M8.7 2.2c.3-.3.8-.3 1 0 .4.4.4.9 0 1.2L5.7 7.8c-.3.3-.9.3-1.2 0L.2 3.4a.8.8 0 010-1.2c.3-.3.8-.3 1.1 0L5 6l3.7-3.8z" fill-rule="nonzero"></path></svg>
													</div>
												</button>
												<button aria-label="Bold" title="Bold" type="button" tabindex="-1" class="tox-tbtn" aria-disabled="false" aria-pressed="false">
													<span class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24" focusable="false">
															<path d="M7.8 19c-.3 0-.5 0-.6-.2l-.2-.5V5.7c0-.2 0-.4.2-.5l.6-.2h5c1.5 0 2.7.3 3.5 1 .7.6 1.1 1.4 1.1 2.5a3 3 0 01-.6 1.9c-.4.6-1 1-1.6 1.2.4.1.9.3 1.3.6s.8.7 1 1.2c.4.4.5 1 .5 1.6 0 1.3-.4 2.3-1.3 3-.8.7-2.1 1-3.8 1H7.8zm5-8.3c.6 0 1.2-.1 1.6-.5.4-.3.6-.7.6-1.3 0-1.1-.8-1.7-2.3-1.7H9.3v3.5h3.4zm.5 6c.7 0 1.3-.1 1.7-.4.4-.4.6-.9.6-1.5s-.2-1-.7-1.4c-.4-.3-1-.4-2-.4H9.4v3.8h4z" fill-rule="evenodd"></path></svg></span>
												</button>
												<button aria-label="Numbered list" title="Numbered list" type="button" tabindex="-1" class="tox-tbtn" aria-disabled="false" aria-pressed="false">
													<span class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24" focusable="false">
															<path d="M10 17h8c.6 0 1 .4 1 1s-.4 1-1 1h-8a1 1 0 010-2zm0-6h8c.6 0 1 .4 1 1s-.4 1-1 1h-8a1 1 0 010-2zm0-6h8c.6 0 1 .4 1 1s-.4 1-1 1h-8a1 1 0 110-2zM6 4v3.5c0 .3-.2.5-.5.5a.5.5 0 01-.5-.5V5h-.5a.5.5 0 010-1H6zm-1 8.8l.2.2h1.3c.3 0 .5.2.5.5s-.2.5-.5.5H4.9a1 1 0 01-.9-1V13c0-.4.3-.8.6-1l1.2-.4.2-.3a.2.2 0 00-.2-.2H4.5a.5.5 0 01-.5-.5c0-.3.2-.5.5-.5h1.6c.5 0 .9.4.9 1v.1c0 .4-.3.8-.6 1l-1.2.4-.2.3zM7 17v2c0 .6-.4 1-1 1H4.5a.5.5 0 010-1h1.2c.2 0 .3-.1.3-.3 0-.2-.1-.3-.3-.3H4.4a.4.4 0 110-.8h1.3c.2 0 .3-.1.3-.3 0-.2-.1-.3-.3-.3H4.5a.5.5 0 110-1H6c.6 0 1 .4 1 1z" fill-rule="evenodd"></path></svg></span>
												</button>
												<button aria-label="Bullet list" title="Bullet list" type="button" tabindex="-1" class="tox-tbtn" aria-disabled="false" aria-pressed="false">
													<span class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24" focusable="false">
															<path d="M11 5h8c.6 0 1 .4 1 1s-.4 1-1 1h-8a1 1 0 010-2zm0 6h8c.6 0 1 .4 1 1s-.4 1-1 1h-8a1 1 0 010-2zm0 6h8c.6 0 1 .4 1 1s-.4 1-1 1h-8a1 1 0 010-2zM4.5 6c0-.4.1-.8.4-1 .3-.4.7-.5 1.1-.5.4 0 .8.1 1 .4.4.3.5.7.5 1.1 0 .4-.1.8-.4 1-.3.4-.7.5-1.1.5-.4 0-.8-.1-1-.4-.4-.3-.5-.7-.5-1.1zm0 6c0-.4.1-.8.4-1 .3-.4.7-.5 1.1-.5.4 0 .8.1 1 .4.4.3.5.7.5 1.1 0 .4-.1.8-.4 1-.3.4-.7.5-1.1.5-.4 0-.8-.1-1-.4-.4-.3-.5-.7-.5-1.1zm0 6c0-.4.1-.8.4-1 .3-.4.7-.5 1.1-.5.4 0 .8.1 1 .4.4.3.5.7.5 1.1 0 .4-.1.8-.4 1-.3.4-.7.5-1.1.5-.4 0-.8-.1-1-.4-.4-.3-.5-.7-.5-1.1z" fill-rule="evenodd"></path></svg></span>
												</button>
											</div>
											<div title="" role="toolbar" data-alloy-tabstop="true" tabindex="-1" class="tox-toolbar__group">
												<button aria-label="Align left" title="Align left" type="button" tabindex="-1" class="tox-tbtn" aria-disabled="false" aria-pressed="false">
													<span class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24" focusable="false">
															<path d="M5 5h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 110-2zm0 4h8c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 110-2zm0 8h8c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 010-2zm0-4h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 010-2z" fill-rule="evenodd"></path></svg></span>
												</button>
												<button aria-label="Align center" title="Align center" type="button" tabindex="-1" class="tox-tbtn" aria-disabled="false" aria-pressed="false">
													<span class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24" focusable="false">
															<path d="M5 5h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 110-2zm3 4h8c.6 0 1 .4 1 1s-.4 1-1 1H8a1 1 0 110-2zm0 8h8c.6 0 1 .4 1 1s-.4 1-1 1H8a1 1 0 010-2zm-3-4h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 010-2z" fill-rule="evenodd"></path></svg></span>
												</button>
												<button aria-label="Align right" title="Align right" type="button" tabindex="-1" class="tox-tbtn" aria-disabled="false" aria-pressed="false">
													<span class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24" focusable="false">
															<path d="M5 5h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 110-2zm6 4h8c.6 0 1 .4 1 1s-.4 1-1 1h-8a1 1 0 010-2zm0 8h8c.6 0 1 .4 1 1s-.4 1-1 1h-8a1 1 0 010-2zm-6-4h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 010-2z" fill-rule="evenodd"></path></svg></span>
												</button>
												<button aria-label="Justify" title="Justify" type="button" tabindex="-1" class="tox-tbtn" aria-disabled="false" aria-pressed="false">
													<span class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24" focusable="false">
															<path d="M5 5h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 110-2zm0 4h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 110-2zm0 4h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 010-2zm0 4h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 010-2z" fill-rule="evenodd"></path></svg></span>
												</button>
											</div>
											<div title="" role="toolbar" data-alloy-tabstop="true" tabindex="-1" class="tox-toolbar__group">
												<button aria-label="Decrease indent" title="Decrease indent" type="button" tabindex="-1" class="tox-tbtn" aria-disabled="false">
													<span class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24" focusable="false">
															<path d="M7 5h12c.6 0 1 .4 1 1s-.4 1-1 1H7a1 1 0 110-2zm5 4h7c.6 0 1 .4 1 1s-.4 1-1 1h-7a1 1 0 010-2zm0 4h7c.6 0 1 .4 1 1s-.4 1-1 1h-7a1 1 0 010-2zm-5 4h12a1 1 0 010 2H7a1 1 0 010-2zm1.6-3.8a1 1 0 01-1.2 1.6l-3-2a1 1 0 010-1.6l3-2a1 1 0 011.2 1.6L6.8 12l1.8 1.2z" fill-rule="evenodd"></path></svg></span>
												</button>
												<button aria-label="Increase indent" title="Increase indent" type="button" tabindex="-1" class="tox-tbtn" aria-disabled="false">
													<span class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24" focusable="false">
															<path d="M7 5h12c.6 0 1 .4 1 1s-.4 1-1 1H7a1 1 0 110-2zm5 4h7c.6 0 1 .4 1 1s-.4 1-1 1h-7a1 1 0 010-2zm0 4h7c.6 0 1 .4 1 1s-.4 1-1 1h-7a1 1 0 010-2zm-5 4h12a1 1 0 010 2H7a1 1 0 010-2zm-2.6-3.8L6.2 12l-1.8-1.2a1 1 0 011.2-1.6l3 2a1 1 0 010 1.6l-3 2a1 1 0 11-1.2-1.6z" fill-rule="evenodd"></path></svg></span>
												</button>
											</div>
											<div title="" role="toolbar" data-alloy-tabstop="true" tabindex="-1" class="tox-toolbar__group">
												<div aria-pressed="false" aria-label="Text color" title="Text color" role="button" aria-haspopup="true" unselectable="on" tabindex="-1" class="tox-split-button" aria-disabled="false" aria-expanded="false" aria-describedby="aria_367154091581647242249643" style="user-select: none;">
													<span role="presentation" tabindex="-1" class="tox-tbtn" aria-disabled="false"><span class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24" focusable="false">
																<g fill-rule="evenodd">
																<path id="tox-icon-text-color__color" d="M3 18h18v3H3z"></path>
																<path d="M8.7 16h-.8a.5.5 0 01-.5-.6l2.7-9c.1-.3.3-.4.5-.4h2.8c.2 0 .4.1.5.4l2.7 9a.5.5 0 01-.5.6h-.8a.5.5 0 01-.4-.4l-.7-2.2c0-.3-.3-.4-.5-.4h-3.4c-.2 0-.4.1-.5.4l-.7 2.2c0 .3-.2.4-.4.4zm2.6-7.6l-.6 2a.5.5 0 00.5.6h1.6a.5.5 0 00.5-.6l-.6-2c0-.3-.3-.4-.5-.4h-.4c-.2 0-.4.1-.5.4z"></path></g></svg></span></span><span role="presentation" tabindex="-1" class="tox-tbtn tox-split-button__chevron" aria-disabled="false"><svg width="10" height="10" focusable="false">
															<path d="M8.7 2.2c.3-.3.8-.3 1 0 .4.4.4.9 0 1.2L5.7 7.8c-.3.3-.9.3-1.2 0L.2 3.4a.8.8 0 010-1.2c.3-.3.8-.3 1.1 0L5 6l3.7-3.8z" fill-rule="nonzero"></path></svg></span><span aria-hidden="true" id="aria_367154091581647242249643" style="display: none;">To open the popup, press Shift+Enter</span>
												</div>
												<div aria-pressed="false" aria-label="Background color" title="Background color" role="button" aria-haspopup="true" unselectable="on" tabindex="-1" class="tox-split-button" aria-disabled="false" aria-expanded="false" aria-describedby="aria_1220148721601647242249644" style="user-select: none;">
													<span role="presentation" tabindex="-1" class="tox-tbtn" aria-disabled="false"><span class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24" focusable="false">
																<g fill-rule="evenodd">
																<path id="tox-icon-highlight-bg-color__color" d="M3 18h18v3H3z"></path>
																<path fill-rule="nonzero" d="M7.7 16.7H3l3.3-3.3-.7-.8L10.2 8l4 4.1-4 4.2c-.2.2-.6.2-.8 0l-.6-.7-1.1 1.1zm5-7.5L11 7.4l3-2.9a2 2 0 012.6 0L18 6c.7.7.7 2 0 2.7l-2.9 2.9-1.8-1.8-.5-.6"></path></g></svg></span></span><span role="presentation" tabindex="-1" class="tox-tbtn tox-split-button__chevron" aria-disabled="false"><svg width="10" height="10" focusable="false">
															<path d="M8.7 2.2c.3-.3.8-.3 1 0 .4.4.4.9 0 1.2L5.7 7.8c-.3.3-.9.3-1.2 0L.2 3.4a.8.8 0 010-1.2c.3-.3.8-.3 1.1 0L5 6l3.7-3.8z" fill-rule="nonzero"></path></svg></span><span aria-hidden="true" id="aria_1220148721601647242249644" style="display: none;">To open the popup, press Shift+Enter</span>
												</div>
											</div>
											<div title="" role="toolbar" data-alloy-tabstop="true" tabindex="-1" class="tox-toolbar__group">
												<button aria-label="Insert/edit link" title="Insert/edit link" type="button" tabindex="-1" class="tox-tbtn" aria-disabled="false" aria-pressed="false">
													<span class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24" focusable="false">
															<path d="M6.2 12.3a1 1 0 011.4 1.4l-2.1 2a2 2 0 102.7 2.8l4.8-4.8a1 1 0 000-1.4 1 1 0 111.4-1.3 2.9 2.9 0 010 4L9.6 20a3.9 3.9 0 01-5.5-5.5l2-2zm11.6-.6a1 1 0 01-1.4-1.4l2-2a2 2 0 10-2.6-2.8L11 10.3a1 1 0 000 1.4A1 1 0 119.6 13a2.9 2.9 0 010-4L14.4 4a3.9 3.9 0 015.5 5.5l-2 2z" fill-rule="nonzero"></path></svg></span>
												</button>
												<button aria-label="Insert/edit image" title="Insert/edit image" type="button" tabindex="-1" class="tox-tbtn" aria-disabled="false" aria-pressed="false">
													<span class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24" focusable="false">
															<path d="M5 15.7l3.3-3.2c.3-.3.7-.3 1 0L12 15l4.1-4c.3-.4.8-.4 1 0l2 1.9V5H5v10.7zM5 18V19h3l2.8-2.9-2-2L5 17.9zm14-3l-2.5-2.4-6.4 6.5H19v-4zM4 3h16c.6 0 1 .4 1 1v16c0 .6-.4 1-1 1H4a1 1 0 01-1-1V4c0-.6.4-1 1-1zm6 8a2 2 0 100-4 2 2 0 000 4z" fill-rule="nonzero"></path></svg></span>
												</button>
												<button aria-label="Insert/edit code sample" title="Insert/edit code sample" type="button" tabindex="-1" class="tox-tbtn" aria-disabled="false" aria-pressed="false">
													<span class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="26" focusable="false">
															<path
																d="M7.1 11a2.8 2.8 0 01-.8 2 2.8 2.8 0 01.8 2v1.7c0 .3.1.6.4.8.2.3.5.4.8.4.3 0 .4.2.4.4v.8c0 .2-.1.4-.4.4-.7 0-1.4-.3-2-.8-.5-.6-.8-1.3-.8-2V15c0-.3-.1-.6-.4-.8-.2-.3-.5-.4-.8-.4a.4.4 0 01-.4-.4v-.8c0-.2.2-.4.4-.4.3 0 .6-.1.8-.4.3-.2.4-.5.4-.8V9.3c0-.7.3-1.4.8-2 .6-.5 1.3-.8 2-.8.3 0 .4.2.4.4v.8c0 .2-.1.4-.4.4-.3 0-.6.1-.8.4-.3.2-.4.5-.4.8V11zm9.8 0V9.3c0-.3-.1-.6-.4-.8-.2-.3-.5-.4-.8-.4a.4.4 0 01-.4-.4V7c0-.2.1-.4.4-.4.7 0 1.4.3 2 .8.5.6.8 1.3.8 2V11c0 .3.1.6.4.8.2.3.5.4.8.4.2 0 .4.2.4.4v.8c0 .2-.2.4-.4.4-.3 0-.6.1-.8.4-.3.2-.4.5-.4.8v1.7c0 .7-.3 1.4-.8 2-.6.5-1.3.8-2 .8a.4.4 0 01-.4-.4v-.8c0-.2.1-.4.4-.4.3 0 .6-.1.8-.4.3-.2.4-.5.4-.8V15a2.8 2.8 0 01.8-2 2.8 2.8 0 01-.8-2zm-3.3-.4c0 .4-.1.8-.5 1.1-.3.3-.7.5-1.1.5-.4 0-.8-.2-1.1-.5-.4-.3-.5-.7-.5-1.1 0-.5.1-.9.5-1.2.3-.3.7-.4 1.1-.4.4 0 .8.1 1.1.4.4.3.5.7.5 1.2zM12 13c.4 0 .8.1 1.1.5.4.3.5.7.5 1.1 0 1-.1 1.6-.5 2a3 3 0 01-1.1 1c-.4.3-.8.4-1.1.4a.5.5 0 01-.5-.5V17a3 3 0 001-.2l.6-.6c-.6 0-1-.2-1.3-.5-.2-.3-.3-.7-.3-1 0-.5.1-1 .5-1.2.3-.4.7-.5 1.1-.5z"
																fill-rule="evenodd"
															></path></svg></span>
												</button>
												<button aria-label="Insert/edit media" title="Insert/edit media" type="button" tabindex="-1" class="tox-tbtn" aria-disabled="false" aria-pressed="false">
													<span class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24" focusable="false">
															<path d="M4 3h16c.6 0 1 .4 1 1v16c0 .6-.4 1-1 1H4a1 1 0 01-1-1V4c0-.6.4-1 1-1zm1 2v14h14V5H5zm4.8 2.6l5.6 4a.5.5 0 010 .8l-5.6 4A.5.5 0 019 16V8a.5.5 0 01.8-.4z" fill-rule="nonzero"></path></svg></span>
												</button>
												<button aria-label="Source code" title="Source code" type="button" tabindex="-1" class="tox-tbtn" aria-disabled="false">
													<span class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24" focusable="false">
															<g fill-rule="nonzero">
															<path d="M9.8 15.7c.3.3.3.8 0 1-.3.4-.9.4-1.2 0l-4.4-4.1a.8.8 0 010-1.2l4.4-4.2c.3-.3.9-.3 1.2 0 .3.3.3.8 0 1.1L6 12l3.8 3.7zM14.2 15.7c-.3.3-.3.8 0 1 .4.4.9.4 1.2 0l4.4-4.1c.3-.3.3-.9 0-1.2l-4.4-4.2a.8.8 0 00-1.2 0c-.3.3-.3.8 0 1.1L18 12l-3.8 3.7z"></path></g></svg></span>
												</button>
											</div>
											<div title="" role="toolbar" data-alloy-tabstop="true" tabindex="-1" class="tox-toolbar__group">
												<button aria-label="Help" title="Help" type="button" tabindex="-1" class="tox-tbtn" aria-disabled="false">
													<span class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24" focusable="false">
															<g fill-rule="evenodd">
															<path d="M12 5.5a6.5 6.5 0 00-6 9 6.3 6.3 0 001.4 2l1 1a6.3 6.3 0 003.6 1 6.5 6.5 0 006-9 6.3 6.3 0 00-1.4-2l-1-1a6.3 6.3 0 00-3.6-1zM12 4a7.8 7.8 0 015.7 2.3A8 8 0 1112 4z"></path>
															<path d="M9.6 9.7a.7.7 0 01-.7-.8c0-1.1 1.5-1.8 3.2-1.8 1.8 0 3.2.8 3.2 2.4 0 1.4-.4 2.1-1.5 2.8-.2 0-.3.1-.3.2a2 2 0 00-.8.8.8.8 0 01-1.4-.6c.3-.7.8-1 1.3-1.5l.4-.2c.7-.4.8-.6.8-1.5 0-.5-.6-.9-1.7-.9-.5 0-1 .1-1.4.3-.2 0-.3.1-.3.2v-.2c0 .4-.4.8-.8.8z" fill-rule="nonzero"></path>
															<circle cx="12" cy="16" r="1"></circle></g></svg></span>
												</button>
											</div>
										</div>
										<div role="group" class="tox-toolbar__overflow tox-toolbar__overflow--closed" style="height: 0px;"></div>
									</div>
									<div class="tox-anchorbar"></div>
								</div>
								<div class="tox-sidebar-wrap">
									<div class="tox-edit-area">
										<iframe id="mce_0_ifr" frameborder="0" allowtransparency="true" title="Rich Text Area. Press ALT-0 for help." class="tox-edit-area__iframe"></iframe>
									</div>
									<div role="complementary" class="tox-sidebar">
										<div data-alloy-tabstop="true" tabindex="-1" class="tox-sidebar__slider tox-sidebar--sliding-closed" style="width: 0px;">
											<div class="tox-sidebar__pane-container"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="tox-statusbar">
								<div class="tox-statusbar__text-container">
									<div role="navigation" data-alloy-tabstop="true" class="tox-statusbar__path" aria-disabled="false"></div>
									<span class="tox-statusbar__branding"><a href="https://www.tiny.cloud/?utm_campaign=editor_referral&amp;utm_medium=poweredby&amp;utm_source=tinymce&amp;utm_content=v5" rel="noopener" target="_blank" tabindex="-1" aria-label="Powered by Tiny">Powered by Tiny</a></span>
								</div>
							</div>
							<div aria-hidden="true" class="tox-throbber" style="display: none;"></div>
						</div>
					</div>
				</div>
				<footer class="modal-card-foot">

					<button class="ac-button is-lg is-outlined is-gray question-modal__button--cancel e-cancel-question-modal ">취소</button>

					<button class="ac-button is-lg is-solid is-primary question-modal__button--cancel e-submit-question-modal ">저장</button>
				</footer>
			</div>
		</section>
	</div>
</body>
</html>