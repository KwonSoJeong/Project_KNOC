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
    
    썸네일<input type="text" name="thumbnail" value="썸네일 이미지">
        <button type="button" onclick="">사진 등록</button> <br />
    
    제목<input type="text" name="title"/> <br />
    소개글<input type="text" name="intro"/> <br />
    
    카테고리<input type="checkbox" name="caterory_id" value="cooking"/>요리 <br />
   
    타입<input type="checkbox" name="type" value="1"/>영상
    <input type="checkbox" name="type" value="2"/>글
     <br />
    
    가격<input type="text" name="price"/> <br />
    
    
    1차시제목<input type="text" name="title1"/> <br />
    1차시파일<input type="file" name="file1"/> <br />
    2차시제목<input type="text" name="title2"/> <br />
    2차시파일<input type="file" name="file2"/> <br />
    2차시제목<input type="text" name="title3"/> <br />
    2차시파일<input type="file" name="file3"/>

    <button type="submit">저장</button>
</form>
</div>
</body>
</html>