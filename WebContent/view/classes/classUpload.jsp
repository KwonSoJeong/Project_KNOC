<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새 클래스 추가</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	
</head>
<style>
*{
box-sizing: border-box;

}

#upload-col{
font-size: 24px;
/*border-bottom : solid 2px #B8E6E1;
margin-left: 400px;
margin-right: 400px;*/
margin-top: 13vh;
}

#upload-h3{
border-bottom: solid 2px #B8E6E1;
margin-top: 80px;
margin-left: 240px;
margin-bottom: 12px;
width: 1450px;
}

button{
width : 100px;
height: 35px;
background-color: #B8E6E1;
font-size : 13px;
border: none;
text-align:center;
font-size: 15px;
margin-left: 30px;
}

#upload-div{
margin: 0 auto;
text-align: center;
}
</style>


<div id="upload-col">
	<h4 id="upload-h3">새 클래스 추가</h4>
	</div>
	
	<div id="upload-div">
	<div class="container" style="padding: 80px;">
		<form name="f" action=" " enctype="multipart/form-data" method="post">
			<br><br>
			
			<label>카테고리 선택</label>
			<div id= "upload-option">
			<select name="china">
			<option value="1">요리</option>
			<option value="2">디저트</option>
			<option value="3">금융</option>
			<option value="3">디자인</option>
			<option value="3">음악</option>
			<option value="3">개발/프로그래밍</option>
			<option value="3">금융</option>
			<option value="3">영어</option>
			</select>
			</div>
			<br><br>
			
            <div>
				<label>제목, 소개글 입력</label>
				<textarea class="form-control" rows="10" cols="60" placeholder="소개글 작성"></textarea>
			</div>
			<br><br>
           <div class="form-group">
				<label>목차</label> 
				<input type="file" class="form-control">
			</div>
			
			<div id="center" style="padding: 25px;">
				<a href=""><button type="submit">차시 추가</button></a>
			</div>
		</form>
	</div>
	</div>
	
</body>
</html>