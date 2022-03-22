<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
    src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script
    src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
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

#upload-thumbnail {
display: inline-block;
width : 300px;
}

#blank_thumbnail {
width: 400px;
height: 270px;
margin: 0 auto;
background-color: gray;
}

#upload-option {
margin-top: 50px;
}

p {
margin: 0;
}
</style>    
</head>
<body>
<div id="upload-col">
    <h4 id="upload-h3">새 클래스 추가</h4>
    </div>
    
    <div id="upload-div">
    <div class="container" style="padding: 80px;">
        <form action="<%=request.getContextPath()%>/classes/classUploadPro" enctype="multipart/form-data" method="post" name="inputform">
            <br>
            <label>썸네일</label>
            <div id="blank_thumbnail">
            <img id="picture" src="" alt="썸네일 이미지" style="width:100%; height:100%;"/>
            </div>
            <input type="hidden" class="form-control" name="thumbnail">
            <button type="button" onclick="thumbnail_upload()">썸네일 등록</button>
            
            <div id="upload-option">
            <label>카테고리</label>
            <select name="caterory_id">
            <option value="category1">운동</option>
            <option value="category2">크리에이티브</option>
            <option value="category3">디자인</option>
            <option value="category4">개발/프로그래밍</option>
            <option value="category5">요리/베이킹</option>
            <option value="category6">금융/재태크</option>
            </select>
             <label>타입</label>
             <input type="radio" name="type" value="1">영상
             <input type="radio" name="type" value="2">글
            </div>
            
            
            <br><br>
            <!-- 
            <div id= "upload-option">
            <label>카테고리</label>
            <select name="caterory_id">
            <option value="category1">운동</option>
            <option value="category2">크리에이티브</option>
            <option value="category3">디자인</option>
            <option value="category4">개발/프로그래밍</option>
            <option value="category5">요리/베이킹</option>
            <option value="category6">금융/재태크</option>
            </select>
            <br />
             <label>타입</label>
             <input type="radio" name="type" value="1">영상
             <input type="radio" name="type" value="2">글
            </div>
            
            <br><br>
            <div id="upload-thumbnail">
            <label>썸네일</label>
            <div id="blank_thumbnail">
            <img id="picture" src="" alt="썸네일 이미지" style="width:100%; height:100%;"/>
            </div>
            <input type="hidden" class="form-control" name="thumbnail">
            <button type="button" onclick="thumbnail_upload()">썸네일 등록</button>
            </div>
            <br><br>
             -->
            <div>
            <label>제목</label>
            <input type="text" name="title" class="form-control">
            </div>
            <br><br>
            
            <div>
            <label>소개글</label>
            <textarea class="form-control" rows="10" cols="60" placeholder="소개글 작성" name="intro"></textarea>
            </div>
            <br><br>
            
            <div>
            <label>가격</label>
            <input type="text" name="price" class="form-control">
            </div>
            <br><br>
            
           <div class="form-group">
                <label>컨텐츠 입력</label><br />
                제목을 입력하세요<input type="text" name="contentTitle" class="form-control">
                컨텐츠 파일을 입력하세요.<input type="file" name="file1" class="form-control" required="required">
                <button id="1" type="button" onclick="removeContent(this)">차시 삭제</button>
            </div>
            <button type="button" onclick="addContent()">차시 추가</button>
            
            <div id="center" style="padding: 25px;">
            <button type="submit">등록하기</button>
            </div>
        </form>
    </div>
    </div>


</body>
</html>