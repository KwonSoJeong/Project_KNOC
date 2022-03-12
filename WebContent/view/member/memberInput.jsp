<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/style/member.css" />
</head>
<body>
<main>
        <div class="container">
            <div id="member-input" class="center-align">
            <h1 id="member-input-h1">회원가입</h1>
                <form action="<%=request.getContextPath()%>/member/memberInputPro" autocomplete="off" method="post">
                <div id="member-input-profile">
                    <img src="<%=request.getContextPath() %>/resource/image/profile.JPG" alt="프로필이미지" /> <br />
                    <label for="user-profile">사진 변경</label>
                    <input id="user-profile" type="file" />
                </div>
                <div id="member-input-info">
                    <label for="user-id">아이디</label>
                    <input id="user-id" type="text" name="id" /> <br />
                    <label for="user-pwd">비밀번호</label>
                    <input id="user-pwd" type="password" name="pwd" /> <br />
                    <label for="user-name">이름</label>
                    <input id="user-name" type="text" name="name" /> <br />
                    <label for="user-email">이메일</label>
                    <input id="user-email" type="email" name="email" /> <br />
                    <label for="user-tel">전화번호</label>
                    <input id="user-tel" type="tel" name="tel" /> 
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