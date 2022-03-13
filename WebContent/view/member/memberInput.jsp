<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/style/member.css" />
<script>
function pic_upload() {
	let loca_left = window.screen.width/2 - 175
    let loca_top = window.screen.height/2 - 150
	const option = "width=350, height=300, left=" + loca_left + ", top=" + loca_top
	open("<%=request.getContextPath()%>/member/pictureForm", "", option)
}
</script>
</head>
<body>
<main>
        <div class="container">
            <div id="member-input" class="center-align">
            <h1 id="member-input-h1">회원가입</h1>
                <form action="<%=request.getContextPath()%>/member/memberInputPro" autocomplete="off" method="post" name="inputform">
                <div id="member-input-profile">
                    <img id="picture" src="<%=request.getContextPath() %>/resource/image/profile.jpg" alt="프로필이미지" /> <br />
                    <input type="hidden" name="profile" />
                    <button type="button" onclick="pic_upload()">사진 등록</button>
                </div>
                <div id="member-input-info">
                    <label for="user-id">아이디</label>
                    <input id="user-id" type="text" name="id" required="required"/> <br />
                    <label for="user-pwd">비밀번호</label>
                    <input id="user-pwd" type="password" name="pwd" required="required"/> <br />
                    <label for="user-name">이름</label>
                    <input id="user-name" type="text" name="name" required="required"/> <br />
                    <label for="user-email">이메일</label>
                    <input id="user-email" type="email" name="email" required="required"/> <br />
                    <label for="user-tel">전화번호</label>
                    <input id="user-tel" type="tel" name="tel" required="required"/> 
                </div>
                <div id="member-input-submit">
                    <button type="submit">회원가입</button>
                </div>
                </form>
                
            </div>
        </div>
    </main>
</body>
</html>