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
<script>
function thumbnail_upload() {
    let loca_left = window.screen.width/2 - 175
    let loca_top = window.screen.height/2 - 150
    const option = "width=350, height=300, left=" + loca_left + ", top=" + loca_top
    open("<%=request.getContextPath()%>/classes/thumbnailForm", "", option)
}
</script>

<script>
let i = 1

function addContent() {
	if (i == 10) {
		alert('최대 10차시까지 등록할 수 있습니다.')
		return
	}
	
	// input name과 새로 생성될 input 영역에 새 번호를 부여하기 위해 i값을 1 증가
    i = i + 1
    const inputForm = document.querySelector(".form-group")
    const inputDiv = document.createElement('div')
    // 이후 삭제 시 id로 영역 찾을 수 있도록 번호를 붙여서 id 부여
    inputDiv.setAttribute("id", "newInput" + i)
    
    // 새로운 차시 제목 입력할 input
    const newTitle = document.createElement('input')
    newTitle.setAttribute("type", "text")
    newTitle.setAttribute("name", "title"+i)
    newTitle.setAttribute("class", "form-control")
    
    // 새로운 차시 컨텐츠 파일 입력할 input
    const newFile = document.createElement('input')
    newFile.setAttribute("type", "file")
    newFile.setAttribute("name", "file"+i)
    newFile.setAttribute("class", "form-control")
    
    // 줄바꿈, input 태그 제목 붙이기 위한 p태그 생성 : css로 margin:0 설정됨
    let addLabel1 = document.createElement('p')
    addLabel1.innerHTML = "<br><br>" + i + "차시 컨텐츠 제목"
    let addLabel2 = document.createElement('p')
    addLabel2.innerHTML = i + "차시 컨텐츠 파일"
    
    // 생성한 요소 전부 div에 붙이고 form태그 안에 추가
    inputDiv.appendChild(addLabel1)
    inputDiv.appendChild(newTitle)
    inputDiv.appendChild(addLabel2)
    inputDiv.appendChild(newFile)
    
    inputForm.appendChild(inputDiv)
}

function removeContent() {
	// 1차시만 있을 때는 삭제할 수 없도록 알림창을 띄우고 삭제하지 않음
	if (i == 1) {
        alert('컨텐츠 없이 클래스를 등록할 수 없습니다.')
        return
    }

	const removeInput = document.querySelector("#newInput"+i)
	removeInput.remove()
    
	// 제일 밑에 있는 차시가 지워지므로 i 값을 1 감소
	i = i - 1
}
</script>
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

#blank_thumbnail {
width: 200px;
height: 130px;
background-color: gray;
}

p {
margin: 0;
}
</style>


<div id="upload-col">
	<h4 id="upload-h3">새 클래스 추가</h4>
	</div>
	
	<div id="upload-div">
	<div class="container" style="padding: 80px;">
		<form action="<%=request.getContextPath()%>/classes/classUploadPro" enctype="multipart/form-data" method="post" name="inputform">
			<br>
			
			<label>카테고리</label>
			<div id= "upload-option">
			<select name="caterory_id">
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
			 <label>타입</label>
			 <input type="radio" name="type" value="1">영상
			 <input type="radio" name="type" value="2">글
			</div>
			<br><br>
			
			<div>
			<label>썸네일</label>
			<div id="blank_thumbnail">
			<img id="picture" src="" alt="썸네일 이미지" style="width:100%; height:100%;"/>
			</div>
			<input type="hidden" class="form-control" name="thumbnail">
			<button type="button" onclick="thumbnail_upload()">썸네일 등록</button>
			</div>
			<br><br>
			
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
				<label>목차</label><br />
				1차시 컨텐츠 제목<input type="text" name="title1" class="form-control">
				1차시 컨텐츠 파일<input type="file" name="file1" class="form-control">
			</div>
			<button type="button" onclick="addContent()">차시 추가</button>
			<button type="button" onclick="removeContent()">차시 삭제</button>
			<div id="center" style="padding: 25px;">
			<button type="submit">등록하기</button>
			</div>
		</form>
	</div>
	</div>


</body>
</html>