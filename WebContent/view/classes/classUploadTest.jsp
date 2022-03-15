<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#input {
margin-top : 150px;
}
</style>
<title>Insert title here</title>
</head>
<body>
<div id="input">
<!-- 클래스 등록 테스트용 페이지입니다. -->
<form action="<%=request.getContextPath()%>/classes/classUploadPro" method="post" enctype="multipart/form-data" name="inputform">
    
    <!-- 썸네일은 img 태그 추가해서 미리보기 넣을 수 있게 해주세요! -->
    썸네일<input type="hidden" name="thumbnail">
        <!-- 썸네일은 filename만 db에서 텍스트로 받을 예정입니다. upload 화면 구현이 끝나면 제가 
        팝업창 따로 만들어서 등록할 예정이니, button에 onclick 속성만 꼭 넣어주세요! -->
        <button type="button" onclick="thumbnail_upload()">썸네일 등록</button> <br />
    
    제목<input type="text" name="title"/> <br />
    소개글<textarea name="intro" ></textarea>
    
    <!-- 카테고리는 지금 구현해주신 대로 select-option으로 하시면 될 것 같습니다. name 속성만 "category_id"로 맞춰주세요! -->
    카테고리<input type="checkbox" name="caterory_id" value="cooking"/>요리 <br />
   
    타입<input type="checkbox" name="type" value="1"/>글
    <input type="checkbox" name="type" value="2"/>영상
     <br />
    
    가격<input type="text" name="price"/> <br />
    
    
    1차시제목<input type="text" name="title1"/> <br />
    1차시파일<input type="file" name="file1"/> <br />
    
    2차시제목<input type="text" name="title2"/> <br />
    2차시파일<input type="file" name="file2"/> <br />
    
    3차시제목<input type="text" name="title3"/> <br />
    3차시파일<input type="file" name="file3"/>

    <button type="submit">저장</button>
</form>
</div>
</body>
</html>